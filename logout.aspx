<%@ Page language="c#" %> 
<%
    FormsAuthentication.SignOut();
    Session.Clear();  // This may not be needed -- but can't hurt
    Session.Abandon();

    // Clear authentication cookie
    HttpCookie rFormsCookie = new HttpCookie( FormsAuthentication.FormsCookieName, "" );
    rFormsCookie.Expires = DateTime.Now.AddYears( -1 );
    Response.Cookies.Add( rFormsCookie );

    // Clear session cookie 
    HttpCookie rSessionCookie = new HttpCookie( "ASP.NET_SessionId", "" );
    rSessionCookie.Expires = DateTime.Now.AddYears( -1 );
    Response.Cookies.Add( rSessionCookie );

    Response.Redirect("Login.aspx");
        
%>
      