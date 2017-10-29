'use strict';

import Base from './base.js';

export default class extends Base {
  /**
   * index action
   * @return {Promise} []
   */
  async indexAction(){
    //auto render template file index_index.html
    let userinfo = await this.session('userinfo');
    console.log(think.isEmpty(userinfo));
    if(think.isEmpty(userinfo)){
      this.assign('username','Login');
      this.assign('logout','');
    }else{
      this.assign('logout','<a href="../../user/login/logout" title="logout">Logout</a>');
      this.assign('username',userinfo.user_name);
    }
    return this.display();
  }
}