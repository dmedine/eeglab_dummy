function [EEG, com] = pop_add_to_hist(EEG, varargin)
    com = '';
    EEG.dummy_add_to = 1234;
    com =[com 'add_to_hist'];
end