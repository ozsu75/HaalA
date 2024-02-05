<%    
								id=Request.QueryString ("id")
								if id="" then newsID=Request.Form ("id")
								if id="" then 
								response.redirect ("default.asp")  
								else
								set rs = conn.execute("select * from Tbl_rool where id="&id)
							%>									

                            <div class="breadcrumb"  style="margin-right:0px;">
                               
                            </div><!--breadcrumb-->
                            <section class="entry-box clearfix" style="text-align:left;">
                                <article class="entry-box-left clearfix">
                                    <h1 class="entry-title"><%=rs("baslik")%></h1>
                                    <%if rs("Resim")<>"" then%>
									<img class="entry-thumb" src="gallery/<%=rs("resim")%>" style="width:100%" alt="" />

									<%else%>
									<img class="entry-thumb" src="images/kitap1.png" style="width:100%" alt="" />
									<%end if%>
          
