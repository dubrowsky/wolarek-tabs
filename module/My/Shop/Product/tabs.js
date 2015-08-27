Floxim.handle('.nav_tabs', function() {
    var $container = $(this),
        $tabs = $container.find('.nav_tabs__tab');
        
    function get_data_block() {
        var $res = null;
        $('.fx_infoblock').each(function() {
            var $ib = $(this);
            if ($ib.data('fx_infoblock').controller === 'my.shop.product:list_by_parent') {
                $res = $ib;
                return false;
            }
        });
        return $res;
    }
        
    function set_tab($tab) {
        if ($container.hasClass('nav_tabs_frozen')) {
            return false;
        }
        $container.addClass('nav_tabs_frozen');
        $tabs.removeClass('nav_tabs__tab_active');
        $tab.addClass('nav_tabs__tab_active');
        var  $data_block = get_data_block();
        Floxim.reload(
            $data_block, 
            function(e) {
                $container.removeClass('nav_tabs_frozen');
            },
            {parent_id:$tab.data('id')}
        );
    };
    
    $tabs.click(function() {
        set_tab($(this));
    });
    
    set_tab($tabs.first());
});