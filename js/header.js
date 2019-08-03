(function(){
    //点击购物车图标
    //1.查找要触发事件的元素，2.绑定处理函数，3.查找要修改的元素，4.修改元素
    var parent=document.getElementById("shop-car");
    //console.log(parent);
    parent.onmouseover=function(){
        var shoplist=document.getElementsByClassName("header-shop");
        shoplist[0].style.display="block";
    }
    parent.onmouseout=function(){
        var shoplist=document.getElementsByClassName("header-shop");
        shoplist[0].style.display="none";
    }
    
    //大屏式，鼠标滚轮滚动两下，导航栏上半部分、图标、和搜索框隐藏，导航栏下半部分样式发生变化
    window.onscroll=function(){
        var scrollTo=document.documentElement.scrollTop || document.body.scrollTop;
        //查找
        var logo=document.querySelector("#totop>.header-nav>.nav-left");
        //console.log(logo)
        var inpu=document.querySelector("#totop>.header-nav>.nav-right");
        var nav=document.querySelector("#totop>.header-nav>.nav-center");
        var navbar=document.getElementById("totop"); 
        if(scrollTo>=200){
            logo.style.display="none";
            inpu.style.display="none";
            nav.style.margin="auto";
            navbar.style.position="fixed";
            navbar.style.top=0;
            navbar.style.zIndex=999;   
        }else{
            logo.style.display="block";
            inpu.style.display="block";
            nav.style.margin=0;
            navbar.style.position="relative";
            navbar.style.top=-46;
            navbar.style.zIndex=1;
        }
        
    //中屏时，鼠标滚动，导航栏的变化
        var scrollTo1=document.documentElement.scrollTop || document.body.scrollTop;
        var logo1=document.querySelector("#totop>.header-nav1");
        if(scrollTo1>=100){
            logo1.style.position="fixed";
            logo1.style.zIndex=1000;  
            logo1.style.width=100+"%";
        }else{
            logo1.style.position="relative";
            logo1.style.zIndex=0;
        }
    }
    
    
    
    
    //导航栏下部分中的首页、计算机等选项，点击变色
    var as=document.querySelectorAll("#content>.navbar-nav>li>a");
    for(var a of as){
        a.onclick=function(){
            //查找a标签的class属性值为col，并清除
            var col=document.querySelectorAll("#content>.navbar-nav>li>a.col");
            if(col.length!=0){
                col[0].className="";
            }
            //将点击的事件元素添加class属性为col
            var a=this
            a.className="col";  
        }
    } 
     
    //侧边导航栏
    var aside=document.querySelector("#aside-nav>div.aside1");
    aside.onmouseover=function(){
        aside.className="aside1s"
    }
    aside.onmouseout=function(){
        aside.className="aside1"
    }
    
    //中屏时，鼠标移入md-img1和md-img2下的图标，图标颜色发生变化
    var img=document.querySelector("#totop>.header-nav1>.md-img>.md-img1 img");
    var img1=document.querySelector("#totop>.header-nav1>.md-img>.md-img2 img");
    img.onmouseover=function(){
        img.setAttribute("src","images/headfoot/jihe2.png");
    }
    img.onmouseout=function(){
        img.setAttribute("src","images/headfoot/jihe1.png");
    }
    img1.onmouseover=function(){
        img1.setAttribute("src","images/headfoot/search2.png");
    }
    img1.onmouseout=function(){
        img1.setAttribute("src","images/headfoot/search1.png");
    }
    
    //在中屏的时候，点击md-img1,class为md-all和class值为all出现
    img.onclick=function(){
        var alls=document.getElementById("tran1");
        var leftAside=document.querySelector("#aside>.all-left");
         leftAside.className="all-lefts";
         alls.className="all";
    
    //当点击在class值为all的div上，leftAside和alls隐藏
        alls.onclick=function(){
            leftAside.className="all-left";
            alls.className="";
        }
    }
    
    //当点击搜索图片按钮时，搜多框出现
    img1.onclick=function(){
        var search=document.querySelector("#sbtn>div.search-nav1");
        var alls=document.getElementById("tran2");
        search.className="search-nav";
        alls.className="all";
    
        alls.onclick=function(){
            search.className="search-nav1";
            alls.className="";
        }
        //当点击取消按钮
        var btu=document.querySelector("#sbtn div.search3>button:last-child");
        btu.onclick=function(){
             search.className="search-nav1";
             alls.className="";
        }
    }
})() 