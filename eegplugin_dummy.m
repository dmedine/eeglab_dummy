function vers = eegplugin_dummy(fig, trystrs, catchstrs)
    vers = 'stateflux0.0.0';
   
    add_to_hist_cb = [trystrs.no_check '[EEG LASTCOM] = pop_add_to_hist(EEG);' catchstrs.add_to_hist];
    store_and_hist_cb = [trystrs.no_check '[EEG LASTCOM] = pop_store_and_hist(EEG);' catchstrs.store_and_hist];
    new_and_hist_cb = [trystrs.no_check '[EEG LASTCOM] = pop_new_and_hist(EEG);' catchstrs.new_and_hist];

    toolsmenu = findobj(fig, 'tag', 'tools');
    root_menu = uimenu( toolsmenu, 'label', 'dummy', 'separator', 'on', 'tag', 'dummy_root', 'userdata', 'startup:off');

    uimenu(root_menu, 'label', 'add_to_hist', 'callback', add_to_hist_cb);
    uimenu(root_menu, 'label', 'store_and_hist', 'callback', store_and_hist_cb);
    uimenu(root_menu, 'label', 'new_and_hist', 'callback', new_and_hist_cb);

end