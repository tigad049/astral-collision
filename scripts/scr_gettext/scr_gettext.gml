/// @param {String} stringid
/// @return {String}
function gettext(stringid){
    var return_string = "";
    var file = file_text_open_read("lang\\en.json");
    var filestr = "";
    
    while (!file_text_eof(file))
    {
        filestr += string_trim(file_text_readln(file));
    }
    file_text_close(file);
    
    var data = json_parse(filestr);
    return_string = data[$stringid];
        
    if return_string = "" {
        return_string = string_concat("ERROR ", stringid, " doesn't exist");
    }

    return_string = string_replace(return_string, "{plr}", global.plr_name);
    return_string = string_replace(return_string, "{x03}", "\x03");
    return_string = string_replace(return_string, "{x02}", "\x02");
    return_string = string_replace(return_string, "{x01}", "\x01");
    
    return return_string;
}