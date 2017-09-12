import React from 'react';

class EMail extends React.Component {
  constructor(){
    super();
    this.state = {
      email: ""
    }
  }

  render() {
    return <input autofocus="autofocus" id="user_email" type="email" name="user[email]" value={this.state.email} onChange={(e) => this.setState({email: e.target.value})} />;
  }
}

const SessionsNew = () => {
  return (
    <div className="devise" >
      <h2>ログイン</h2>
      <form className="new_user" id="new_user" action="/users/sign_in" accept-charset="UTF-8" method="post">
        <input name="utf8" type="hidden" value="✓" />
        <input type="hidden" name="authenticity_token" value="wL6W7pPUz69ezYUR+sDTGkl31hOzD6LSvBU/TizqX9c++kOhUVkzPL+BrntnN4whMnpOnkU/pvCCYWnessUnMw==" />

        <div className="field">
          <label className="title" for="user_email">Email</label>
          <EMail/>
        </div>

        <div className="field">
          <label className="title" for="user_パスワード">パスワード</label>
          <input autocomplete="off" type="password" name="user[password]" id="user_password" />
        </div>

        <div className="field">
          <p>
            <input name="user[remember_me]" type="hidden" value="0" />
            <input type="checkbox" value="1" name="user[remember_me]" id="user_remember_me" />
            remember me
          </p>
        </div>

        <div className="actions">
          <input type="submit" name="commit" value="ログイン" data-disable-with="ログイン" />
        </div>
      </form>
    </div>
  )
};

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
