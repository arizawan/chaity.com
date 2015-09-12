@section('navigation')
<li class="sub-menu">
    <a href="javascript:;" >
        <i class="fa fa-home"></i>
        <span>Home Page Slides</span>
    </a>
    <ul class="sub">
        <li><a  href="/admin/homeslide/add">Add new</a></li>
        <!--<li><a  href="/admin/schedules/edit/">Edit</a></li>-->
        <li><a  href="/admin/homeslide/list">List</a></li>
    </ul>
</li>
<li class="sub-menu">
    <a href="javascript:;" >
        <i class="fa fa-align-right"></i>
        <span>Home Page Contents</span>
    </a>
    <ul class="sub">
        <li><a  href="/admin/homepage/garments-products">Garments Products</a></li>
        <li><a  href="/admin/homepage/under-garment-products">Under Garments Products</a></li>
        <li><a  href="/admin/homepage/latest-news">Latest News</a></li>
        <li><a  href="/admin/homepage/major-news">Major Buyers</a></li>
    </ul>
</li>
<li class="sub-menu">
    <a href="javascript:;" >
        <i class="fa fa-picture-o"></i>
        <span>Photo Gallery</span>
    </a>
    <ul class="sub">
        <li><a  href="/admin/category/add">Category</a></li>
        <li><a  href="/admin/photogallery/add">Add New Image</a></li>
        <li><a  href="/admin/photogallery/list">List Images</a></li>
    </ul>
</li>
<li class="sub-menu">
    <a href="javascript:;" >
        <i class="fa fa-cogs"></i>
        <span>Settings</span>
    </a>
    <ul class="sub">
        <li><a  href="/admin/changepass">Change Password</a></li>
    </ul>
</li>
@show
