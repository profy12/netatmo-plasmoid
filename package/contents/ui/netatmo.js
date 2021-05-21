class NetatmoConnect {
    constructor(){
        this.authUrl = 'https://api.netatmo.com/oauth2/token';
        this._params = {
                grant_type: "password",
                client_id: "53aaf27e1d77598a6755efec",
                client_secret: "0tTYiPL1rpjXGuec3pIb0GXBP",
                username: this._settings.username,
                password: this._settings.password,
                scope: "read_station"
            };
    }
}

