import React from 'react';

const Email = ({email, onChange}) => {
  return <div className="field">
      <label className="title" for="user_email">Email</label>
      <input autofocus="autofocus" id="user_email" type="email" name="user[email]" value={email} onChange={onChange} />;
    </div>

};

const Password = ({onChange}) => {
  return <div className="field">
    <label className="title" for="user_password">パスワード</label>
    <input autocomplete="off" type="password" name="user[password]" id="user_password" onChange={onChange} />
  </div>
};

const RememberMe = ({checked, onChange}) => {
  return <div className="field">
      <p>
        <input name="user[remember_me]" type="hidden" value="0" />
        <input type="checkbox" value={checked} name="user[remember_me]" id="user_remember_me" onChange={onChange} />
        remember me
      </p>
    </div>

};

class SessionsNew extends React.Component {

  constructor() {
    super();
    this.state = {
      email: '',
      password: '',
      remember: '1',
    }
  }

  onEmailChange = (e) => {
    this.setState({
      email: e.target.value
    })
  };

  onPasswordChange = (e) => {
    this.setState({
      password: e.target.value
    })
  };

  onRememberChange = (e) => {
    this.setState({
      remember: e.target.value
    })
  };

  render() {
    return (
      <div className="devise" >
        <h2>ログイン</h2>
        <form className="new_user" id="new_user" action="/users/sign_in" accept-charset="UTF-8" method="post">
          <input name="utf8" type="hidden" value="✓" />
          <input type="hidden" name="authenticity_token" value="wL6W7pPUz69ezYUR+sDTGkl31hOzD6LSvBU/TizqX9c++kOhUVkzPL+BrntnN4whMnpOnkU/pvCCYWnessUnMw==" />

          <Email email={this.state.email} onChange={this.onEmailChange} />
          <Password onChange={this.onPasswordChange} />
          <RememberMe checked={this.state.remember} onChange={this.onRememberChange} />

          <div className="actions">
            <input type="submit" name="commit" value="ログイン" data-disable-with="ログイン" />
          </div>
        </form>
      </div>
    )
  }

}

export default SessionsNew;

// <h2>ログイン</h2>
//
// <hr>
//
// <%= form_for(resource, as: resource_name, url: session_path(resource_name)) do |f| %>
// <div class="field">
// <%= f.label :email, class: :title %><br />
// <%= f.email_field :email, autofocus: true %>
// </div>
//
// <div class="field">
//   <%= f.label "パスワード", class: :title %><br />
//   <%= f.password_field :password, autocomplete: "off" %>
// </div>
//
// <% if devise_mapping.rememberable? -%>
//     <div class="field">
//       <p><%= f.check_box :remember_me %>remember me</p>
//     </div>
// <% end -%>
//
//   <div class="actions">
//     <%= f.submit "ログイン" %>
//   </div>
// <% end %>

// <hr>
//
//   <%= render "devise/shared/links" %>
