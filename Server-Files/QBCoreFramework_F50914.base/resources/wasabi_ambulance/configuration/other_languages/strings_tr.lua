-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
-- Thanks to Lumisaphy#0001 --




-- THIS FILE IS COMMUNITY DRIVEN, IT COULD NOT BE UP TO DATE --
-- THIS FILE IS COMMUNITY DRIVEN, IT COULD NOT BE UP TO DATE --
-- THIS FILE IS COMMUNITY DRIVEN, IT COULD NOT BE UP TO DATE --
-- THIS FILE IS COMMUNITY DRIVEN, IT COULD NOT BE UP TO DATE --
-- THIS FILE IS COMMUNITY DRIVEN, IT COULD NOT BE UP TO DATE --
-- THIS FILE IS COMMUNITY DRIVEN, IT COULD NOT BE UP TO DATE --
-- THIS FILE IS COMMUNITY DRIVEN, IT COULD NOT BE UP TO DATE --
-- THIS FILE IS COMMUNITY DRIVEN, IT COULD NOT BE UP TO DATE --
-- THIS FILE IS COMMUNITY DRIVEN, IT COULD NOT BE UP TO DATE --





Strings = {

    -- New (1.1.1 - Diagnose reasons)
    shot = 'vurulmuş',
    stabbed = 'bıçaklanmış',
    beat = 'dövülmüş',
    burned = 'yanmış',
    --

    JobMenuTitle = 'Ambulans Menüsü',
    dispatch = 'Sevk etmek',
    dispatch_desc = 'Yardıma ihtiyacı olan oyuncuları arayın',
    DispatchMenuTitle = 'Sevk etmek',
    GoBack = 'Geri',
    key_map_text = 'Ambulans iş menüsü',
    assistance_title = 'yardım istendi',
    assistance_desc = 'Bir kişi tıbbi yardım istedi!',
    respawn_available_in = 'Yeniden doğma ~r~%s dakika %s saniye~s~ içinde mümkün\n',
    respawn_bleedout_in = '~r~%s dakika %s saniye~s~n içinde kan kaybından öleceksiniz',
    respawn_bleedout_prompt = 'Yeniden doğmak için [~r~E~s~] tuşunu basılı tutun',
    distress_send = 'Acil durum servislerine bir imdat sinyali göndermek için [~r~G~s~] tuşlarına basın.',
    distress_sent_title = 'yardım istendi',
    distress_sent_desc = 'İmdat sinyali mevcut birimlere gönderildi!',
    route_set_title = 'Rota ayarla',
    route_set_desc = 'Yaralı bir yol noktası belirlendi!',
    diagnose_patient = 'Teşhis',
    diagnose_patient_desc = 'En yakın yaralı kişiyi teşhis edin',
    no_requests = 'Etkin istek yok',
    revive_patient = 'Canlandır',
    revive_patient_desc = 'Yakındaki kişiyi canlandırmaya çalışın.',
    heal_patient = 'İyileştirmek',
    heal_patient_desc = 'Yakındaki bir kişiyi iyileştirmeye çalışmak',
    sedate_patient = 'Sakinleştir',
    sedate_patient_desc = 'Yakındaki kişiye geçici olarak sakinleşti',
    drag_patient = 'Almak',
    drag_patient_desc = 'Yakındaki yaralı kişiyi al',
    place_stretcher_target = 'Hasta ekle veya kaldır',
    place_patient = 'Araç içine/dışarı yerleştirin',
    place_patient_desc = 'Yakındaki kişiyi aracın içine/dışarıya yerleştirin',
    no_nearby = 'Bulunamadı',
    no_nearby_desc = 'etrafta kimse yok gibi',
    no_injury = 'yaralanma yok',
    no_injury_desc = 'Kişinin herhangi bir ek tedaviye ihtiyacı olduğu görülmemektedir.',
    player_injury = 'Yaralanmış kişi',
    player_injury_desc = 'Bu kişinin %s olduğu düşünülüyor',
    player_not_unconcious = 'Oyuncu bilinçli',
    player_not_unconcious_desc = 'Oyuncunun bilinci açık görünüyor.',
    player_unconcious = 'bilinçsiz oyuncu',
    player_unconcious_desc = 'Bu tedavi için hastanın bilinci açık olmalıdır!',
    player_reviving = 'hayata döndür',
    player_reviving_desc = 'Hastanın hayata döndürülmesi sağlanıyor',
    player_noitem = 'Eksik malzeme',
    player_noitem_desc = 'bunun için gereken Malzemeniz yok!',
    player_successful_revive = 'Hayata döndürüldü',
    player_successful_revive_reward_desc = 'Hastayı başarıyla hayata döndürdünüz ve $%s kazandınız!',
    player_successful_revive_desc = 'Hastayı başarıyla hayata döndürdün!',
    player_healing = 'İyileştirme',
    player_healing_desc = 'İyileştirme yapılıyor',
    player_successful_heal = 'iyileştirildi',
    player_successful_heal_desc = 'Hasta başarıyla iyileştirildi!',
    player_healed_desc = 'Doktor seni başarıyla iyileştirdi!',
    not_medic = 'yetkisiz',
    not_medic_desc = 'Bunu kullanmak için eğitilmedin!',
    target_sedated = 'Sakinleştirici',
    target_sedated_desc = 'Bir Doktor tarafından sakinleştirildiniz',
    player_successful_sedate_desc = 'Hastayı başarıyla sakinleştirdiniz',
    drop_bag_ui = '[E] - Çantayı bırak',
    drop_stretch_ui = '[E] - Sedyeyi yerleştir ',
    pickup_bag_target = 'Kaldır',
    move_target = 'Hareket et',
    interact_bag_target = 'Aç',
    successful = 'Başarılı',
    medbag_pickup = 'İlaç çantasını yanına aldın',
    medbag_pickup_civ = 'Çantayı aradın ve gerekli malzemeleri aldın.',
    stretcher_pickup = 'Katlanır sedyeyi yanına aldın',
    medbag = 'tıbbi çanta',
    medbag_tweezers = 'cımbız',
    medbag_tweezers_desc = 'Mermileri çıkarmak için',
    medbag_suture = 'Dikiş Kiti',
    medbag_suture_desc = 'Yaraları dikmek için',
    medbag_icepack = 'buz paketi',
    medbag_icepack_desc = 'Şişliği azaltmak için',
    medbag_burncream = 'yanık kremi',
    medbag_burncream_desc = 'Yanık tedavisi için',
    medbag_defib = 'defibrilatör',
    medbag_defib_desc = 'Hastaların hayata döndürmek için',
    medbag_medikit = 'Sağlık çantası',
    medbag_medikit_desc = 'Hastaların iyileşmesi için',
    medbag_sedative = 'sakinleştiriciler',
    medbag_sedative_desc = 'Hastaları sakinleştirmek için',
    medbag_stretcher = 'katlanabilir sedye',
    medbag_stretcher_desc = 'Hasta taşımak için',
    item_grab = 'İlaç çantandan bir alet çıkardın',
    wrong_equipment = 'yanlış ekipman!',
    wrong_equipment_desc = 'Hiç eğitim aldın mı?',
    player_not_injured = 'Yaralanmamış',
    player_not_injured_desc = 'Bu kişinin ek tedaviye ihtiyacı yok gibi görünüyor ve defibrilatör kullanılmaya uygun.',
    player_treated = 'Tedavi edildi',
    player_treated_desc = 'Hastayı başarıyla tedavi ettiniz',
    revive_command_help = 'Oyuncuları canlandırmak için bir admin komutu',
    revive_command_arg = 'Oyuncu-ID',
    reviveall_command_help = 'Her oyuncuyu canlandırmak için bir admin komutu',
    revivearea_command_help = 'Yakındaki oyuncuları canlandırmak için bir admin komutu',
    revivearea_command_arg = 'Oyuncu canlanma alanı',
    resetdeathcount_command_help = 'Oyuncu ölüm sayısını sıfırlamak için bir admin komutu',
    resetdeathcount_command_arg = 'Oyuncu-ID',
    viewdeathcount_command_help = 'Kendi ölüm sayınızı gösteren bir komut',
    alive_again = 'Canlı',
    alive_again_desc = 'Yerel biri tarafından hastaneye bırakıldınız!',
    request_supplies_target = 'tıbbi aksesuarlar',
    currency = '$',
    not_enough_funds = 'Yetersiz bakiye',
    not_enough_funds_desc = 'Yeterli paran yok!',
    hospital_garage = 'Hastane garajı',
    used_meditkit = 'Kullanılan Medikit',
    used_medikit_desc = 'Kendini toparlamayı başardın',
    action_cancelled = 'İşlem iptal edildi',
    action_cancelled_desc = 'Son eyleminizi iptal ettiniz!',
    healing_self_prog = 'yaraların tedavisi',
    checkin_hospital = 'Başarı',
    checkin_hospital_desc = 'Hastane personeli tarafından başarılı bir şekilde tedavi edildiniz.',
    max_ems = 'sağlık görevlisi mevcut',
    max_ems_desc = 'Kasabada çok sayıda sağlık görevlisi var! Yardım için acil çağrı!',
    player_busy = 'Meşgul',
    player_busy_desc = 'Şu anda bu işlemi gerçekleştirmek için çok meşgulsünüz!',
    cloakroom = 'Soyunma odası',
    civilian_wear = 'Sivil giysi',
    bill_patient = 'Hastanın Faturası',
    bill_patient_desc = 'Yakındaki bir hastaya fatura gönder',
    invalid_entry = 'Geçersiz',
    invalid_entry_desc = 'Girişiniz geçersizdi!',
    medical_services = 'Tıbbi hizmetler',
    hospital = 'Hastane'
}