'use strict';

import Base from './base.js';

export default class extends Base {
  /**
   * index action
   * @return {Promise} []
   */
  async indexAction(){
    //auto render template file index_index.html
    if(this.isPost()){
    	let username = this.post('user-id');
    	let password = this.post('password');
      let data = await this.model('user').where({user_loginname:username,user_password:password}).find();
    	//if(!(username=="hust"&&password=="123456")){
      if(think.isEmpty(data)){
    		return this.error(403,'username or password is wrong!');
    	}else{
        await this.session('userinfo',data);
    		return this.redirect('../../theme/index/index.html');
    	}
    }
    return this.display();
  }
  async logoutAction(){
    await this.session();
    return this.redirect('../../theme/index/index.html');
  }
}