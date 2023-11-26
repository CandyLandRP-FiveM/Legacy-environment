<template>
    <div class='tuning-menu'>
        <TuningTitle />
        <div class="tuning-categories">
            <CategoryList :grow='!selectedLevel1 && !selectedLevel2'>
                <CategoryListItem 
                    :small='selectedLevel1' 
                    :label='option.label' 
                    :icon='`cat1/${option.name}.png`' 
                    v-for="option in tuningCategories"
                    :key='option.name'
                    :active='option.name == selectedLevel1'
                    :is-unlocked='true'
                    @click='selectLevel1(option.name)'
                />
            </CategoryList>
            
            <CategoryList v-if='selectedLevel1' :grow='selectedLevel1 && !selectedLevel2'>
                <div class='option-header' v-if='selectedLevel1 && !selectedLevel2'>
                    <div class='back' @click='unsetLevel1'></div> 
                    <div class="option-name">{{ tuningLevel1Options.label }}</div>
                </div>
                <CategoryListItem 
                    :small='selectedLevel1 && selectedLevel2' 
                    :label='option.label' 
                    :icon='`cat2/${option.modName}.png`' 
                    v-for='option in tuningLevel1Options.items'
                    :key='option.modName'
                    :active='option.modName == selectedLevel2'
                    :is-unlocked='isShopUpgradeUnlocked(option)'
                    @click='selectLevel2(option.modName)'
                />
            </CategoryList>
            
            <CategoryList v-if='has3Levels && selectedLevel1 && selectedLevel2' :grow='selectedLevel1 && selectedLevel2 && !selectedLevel3'>
                <div class='option-header' v-if='selectedLevel1 && selectedLevel2 && !selectedLevel3'>
                    <div class='back' @click='unsetLevel2'></div> 
                    <div class="option-name">{{ tuningLevel2Options.label }}</div>
                </div>
                <CategoryListItem 
                    :small='selectedLevel1 && selectedLevel2 && selectedLevel3' 
                    :label='option.label' 
                    :icon='`cat2/${option.modName}.png`' 
                    v-for='option in tuningLevel2Options.items'
                    :key='option.modName + option.label' 
                    :active='option.modName == selectedLevel3'
                    :icon-color='isColor ? option.modName : null'
                    :is-unlocked='isShopUpgradeUnlocked(option)'
                    @click='selectLevel3(option.modName)'
                />
            </CategoryList>
            
            <CategoryList v-if='has3Levels && selectedLevel1 && selectedLevel2 && selectedLevel3' :grow='selectedLevel1 && selectedLevel2 && selectedLevel3'>
                <div class='option-header'>
                    <div class='back' @click='unsetLevel3'></div> 
                    <div class="option-name">{{ tuningLevel2Options.label }}</div>
                </div>
                <CategoryListOptionItem 
                    :label='option.label' 
                    v-for='option in tuningLevel3Options.items'
                    :key='option.label + option.index' 
                    :price='option.price' 
                    :is-installed='isTuningOptionInstalled(option.index)'
                    :is-active='isOptionPreviewed(option.index)'
                    :is-ordered='isOptionOrdered(option.index)'
                    :is-unlocked='true'
                    @select='previewTuningOption(option.index)'
                />
            </CategoryList>
            
            <CategoryList v-if='!has3Levels && selectedLevel1 && selectedLevel2' :grow='selectedLevel1 && selectedLevel2'>
                <div class='option-header'>
                    <div class='back' @click='unsetLevel2'></div> 
                    <div class="option-name">{{ tuningLevel2Options.label }}</div>
                </div>
                <CategoryListOptionItem 
                    :label='option.label' 
                    v-for='option in tuningLevel2OptionsItems'
                    :key='option.label + option.index' 
                    :price='option.price'
                    :is-installed='isTuningOptionInstalled(option.index)'
                    :is-active='isOptionPreviewed(option.index)'
                    :is-ordered='isOptionOrdered(option.index)'
                    :is-unlocked='true'
                    @select='previewTuningOption(option.index)'
                />
            </CategoryList>
        </div>
        <TuningBottom />
        <ActionButtons></ActionButtons>

        <!-- <div style='background: black; padding: 10px; margin-top: 10px;'>
            {{ previewModName }} / {{ previewModType }} / {{ previewModTypeIndex }}
        </div> -->
    </div>
</template>

<script>
import TuningTitle from './TuningTitle';
import CategoryList from './CategoryList';
import CategoryListItem from './CategoryListItem';
import CategoryListOptionItem from './CategoryListOptionItem';
import TuningBottom from './TuningBottom';
import {apiUpDownSound} from '../api.js';
import ActionButtons from './ActionButton';

export default {
    components: {
        TuningTitle,
        CategoryList,
        CategoryListItem,
        CategoryListOptionItem,
        TuningBottom,
        ActionButtons
    },
    data() {
        return {
            selectedLevel1: null,
            selectedLevel2: null,
            selectedLevel3: null,
        }
    },
    computed: {
        isColor() {
            return this.selectedLevel1 == 'resprays'
             || this.selectedLevel2 == 'modFrontWheelsColor';
        },
        has3Levels() {
            return this.selectedLevel1 == 'resprays'
             || this.selectedLevel2 == 'modFrontWheelsColor'
             || this.selectedLevel2 == 'modFrontWheelsTypes'
             || this.selectedLevel2 == 'menu_lights';
        },
        tuningCategories: function() {
            return this.$store.state.tuningOptions;
        },
        installedUpgrades: function() {
            return this.$store.state.installedUpgrades;
        },
        orderedUpgrades: function() {
            return this.$store.state.orderedUpgrades;
        },
        purchasedShopUpgrades: function() {
            return this.$store.state.purchasedShopUpgrades;
        },
        tuningLevel1Options: function() {
            for(let cat of this.tuningCategories) {
                if(cat.name == this.selectedLevel1) {
                    return cat;
                }
            }
            return {items: []};
        },
        tuningLevel2Options: function() {
            for(let option of this.tuningLevel1Options.items) {
                if(option.modName == this.selectedLevel2) {
                    return option;
                }
            }
            return [];
        },
        tuningLevel2OptionsItems: function() {
            const installedWheelType = this.getInstalledWheelType();
            const orderedWheelType = this.getOrderedWheelType();

            return this.tuningLevel2Options.items.filter((option) => {
                if(option.wheelTypeDependant) {
                    for(let wt of option.allowedWheelTypes) {
                        if(orderedWheelType) {
                            if(orderedWheelType == wt) {
                                return true;
                            }
                        } else if(installedWheelType) {
                            if(installedWheelType == wt) {
                                return true;
                            }
                        }
                    }
                } else {
                    return true;
                }

                return false;
            });
        },
        tuningLevel3Options: function() {
            for(let option of this.tuningLevel2Options.items) {
                if(option.modName == this.selectedLevel3) {
                    return option;
                }
            }
            return [];
        },
        previewModName: function() {
            return this.$store.state.previewModName;
        },
        previewModType: function() {
            return this.$store.state.previewModType;
        },
        previewModTypeIndex: function() {
            return this.$store.state.previewModTypeIndex;
        },
    },
    methods: {
        getInstalledWheelType() {
            for(let i = 0; i <= 12; i++) {
                if(this.installedUpgrades['modFrontWheelsType' + i] !== null && this.installedUpgrades['modFrontWheelsType' + i] !== undefined) {
                    if(this.installedUpgrades['modFrontWheelsType' + i] >= 0) {
                        return 'modFrontWheelsType' + i;
                    }
                }
            }

            return null;
        },
        getOrderedWheelType() {
            for(let i = 0; i <= 12; i++) {
                if(this.orderedUpgrades['modFrontWheelsType' + i] !== null && this.orderedUpgrades['modFrontWheelsType' + i] !== undefined) {
                    if(this.orderedUpgrades['modFrontWheelsType' + i] >= 0) {
                        return 'modFrontWheelsType' + i;
                    }
                }
            }

            return null;
        },
        isTuningOptionInstalled(optionIndex) {
            let modType = this.selectedLevel2;
            let hasAnyWheelType = false;

            if(this.selectedLevel2 == 'modFrontWheelsTypes') {
                const installedWheelType = this.getInstalledWheelType();

                if(installedWheelType) {
                    hasAnyWheelType = true;
                    modType = installedWheelType;
                }

                if(!hasAnyWheelType && optionIndex == -1) {
                    return true;
                }
            }

            if(this.selectedLevel3 === 'modXenon') {
                return this.installedUpgrades[this.selectedLevel3] == optionIndex;
            }

            if(this.selectedLevel3 === 'modXenonColor') {
                return this.installedUpgrades[this.selectedLevel3] == optionIndex;
            }

            if(hasAnyWheelType && this.selectedLevel3 != modType) {
                return false;
            }

            return this.installedUpgrades[modType] == optionIndex;
        },
        isOptionOrdered(optionIndex) {
            let modType = this.selectedLevel2;
            let hasAnyWheelType = false;

            if(this.selectedLevel2 == 'modFrontWheelsTypes') {
                const orderedWheelType = this.getOrderedWheelType();

                if(orderedWheelType) {
                    hasAnyWheelType = true;
                    modType = orderedWheelType;
                }
            }

            if(this.selectedLevel3 === 'modXenon') {
                return this.orderedUpgrades[this.selectedLevel3] == optionIndex;
            }

            if(this.selectedLevel3 === 'modXenonColor') {
                return this.orderedUpgrades[this.selectedLevel3] == optionIndex;
            }

            if(hasAnyWheelType && this.selectedLevel3 != modType) {
                return false;
            }

            return this.orderedUpgrades[modType] == optionIndex;
        },
        isOptionPreviewed(optionIndex) {
            if(this.$store.state.previewModName == this.getSelectedModName()) {
                if(this.$store.state.previewModTypeIndex == optionIndex) {
                    return true;
                }
            }

            return false;
        },
        isShopUpgradeUnlocked(option) {
            if (
                option.modName === "primaryRespray" ||
                option.modName === "secondaryRespray" ||
                option.modName === "pearlescentRespray" ||
                option.modName === "interiorRespray" ||
                option.modName === "dashboardRespray" ||
                option.modName === "modFrontWheelsColor"
            ) {
                for (let i = 0; i < option.items.length; i++) {
                    if (option.items[i].unlocked) {
                        return true;
                    }
                }
            }

            if (option.unlocked) {
                return true;
            }

            if (this.purchasedShopUpgrades[option.modName]) {
                return true;
            }

            if (
                option.modName === "menu_lights" ||
                option.modName === "modXenonColor"
            ) {
                return (this.purchasedShopUpgrades["modXenon"]) ? true : false;
            }

            if (option.modName === "modFrontWheelsTypes") {
                for (let i = 0; i <= 12; i++) {
                    if (this.purchasedShopUpgrades["modFrontWheelsType" + i]) {
                        return true;
                    }
                }
            }

            return false
        },
        selectLevel1: function(name) {
            apiUpDownSound();
            this.selectedLevel1 = name;
            this.selectedLevel2 = null;
            this.selectedLevel3 = null;
            this.$store.commit('unsetPreview');
        },
        selectLevel2: function(name) {
            apiUpDownSound();
            this.selectedLevel2 = name;
            this.$store.commit('unsetPreview');
            
            if(this.selectedLevel1 !== 'resprays') {
                this.selectedLevel3 = null;
            }
        },
        selectLevel3(name) {
            apiUpDownSound();
            this.selectedLevel3 = name;
            
            if(this.selectedLevel1 !== 'resprays' && this.selectedLevel2 !== 'modFrontWheelsColor') {
                this.$store.commit('unsetPreview');
            }
        },
        unsetAllLevels() {
            this.selectedLevel1 = null;
            this.selectedLevel2 = null;
            this.selectedLevel3 = null;
        },
        unsetLevel1() {
            apiUpDownSound();
            this.selectedLevel1 = null;
        },
        unsetLevel2() {
            apiUpDownSound();
            this.selectedLevel2 = null;
        },
        unsetLevel3() {
            apiUpDownSound();
            this.selectedLevel3 = null;
        },
        getSelectedModName() {
            if(this.has3Levels) {
                if(this.selectedLevel1 === 'resprays' || this.selectedLevel2 === 'modFrontWheelsColor') {
                    return this.selectedLevel2;
                } else {
                    return this.selectedLevel3;
                }
            } else {
                return this.selectedLevel2;
            }
        },
        getSelectedModType() {
            if(this.has3Levels) {
                if(this.selectedLevel1 === 'resprays' || this.selectedLevel2 === 'modFrontWheelsColor') {
                    return this.tuningLevel2Options.modType;
                } else {
                    return this.tuningLevel3Options.modType;
                }
            } else {
                return this.tuningLevel2Options.modType;
            }
        },
        previewTuningOption(index) {
            const modName = this.getSelectedModName();
            let modType = this.getSelectedModType();
            if(modType === null || modType === undefined) {
                modType = modName;
            }
            this.$store.commit('previewTuning', [modName, modType, index]);
        },
    }
}
</script>

<style scoped>
    .option-header {
        display: flex;    
        align-items: center;
        gap: 10px;
    }
    .back {
        cursor: pointer;
        width: 20px;
        height: 20px;
        background: url('../../public/back.png') center center;
        background-size: contain;
        position: relative;
        left: 3px;
        
    }
    .tuning-menu {
        background: rgba(17, 17, 17, 0.95);
        width: 400px;
        height: 50vh;
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        left: 50px;
        border-radius: 5px;
    }

    .tuning-categories {
        height: calc(100% - 45px);
        padding: 0 10px;
        display: flex;
        gap: 10px;
    }
</style>