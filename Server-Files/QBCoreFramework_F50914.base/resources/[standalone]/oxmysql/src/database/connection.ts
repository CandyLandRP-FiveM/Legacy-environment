import { createPool, Pool, RowDataPacket } from 'mysql2/promise';
import { connectionOptions, mysql_transaction_isolation_level } from '../config';
import { scheduleTick } from '../utils/scheduleTick';
import { sleep } from '../utils/sleep';

export let pool: Pool;
export let isServerConnected = false;
export let dbVersion = '';

export async function waitForConnection() {
  while (!isServerConnected) {
    await sleep(0);
  }
}

export async function createConnectionPool() {
  try {
    pool = createPool(connectionOptions);

    pool.on('connection', (connection) => {
      connection.query(mysql_transaction_isolation_level);
    });

    const connection = await pool.getConnection();
    const [result] = await (<Promise<RowDataPacket[]>>connection.query('SELECT VERSION() as version'));
    dbVersion = `^5[${result[0].version}]`;

    connection.release();
    console.log(`${dbVersion} ^2Database server connection established!^0`);

    isServerConnected = true;
  } catch (err: any) {
    isServerConnected = false;

    console.log(
      `^3Unable to establish a connection to the database (${err.code})!\n^1Error ${err.errno}: ${err.message}^0`
    );
  }
}

export async function getPoolConnection() {
  if (!isServerConnected) await waitForConnection()

  scheduleTick();

  return pool.getConnection();
}
