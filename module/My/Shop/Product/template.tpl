<div fx:template="nav_tabs" class="nav_tabs" fx:of="floxim.nav.section:list">
    {js}
        /module/Floxim/Ui/Js/Floxim.js
        tabs.js
    {/js}
    {css}tabs.less{/css}
    
    <div class="nav_tabs__tabs">
        <a fx:item class="nav_tabs__tab {if $position == 1}nav_tabs__tab_active{/if}" data-id="{$id}" data-url="{$url}">{$name}</a>
    </div>
    
    <div class="nav_tabs__data" fx:area="tab_data"></div>
</div>