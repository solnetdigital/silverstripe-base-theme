<!-- Main hero unit for a primary marketing message or call to action -->
<% include HeroUnit %>

$Form
$CommentsForm

<!-- Example row of columns -->
<div class="row">
	<% if Quicklinks %>
	<div class="span3 linkSet">
		<h2><i class="icon-link" aria-hidden="true"></i> Quicklinks</h2>
		<ul>
			<% loop Quicklinks %>
				<li class="$EvenOdd $FirstLast"><a href="$Link" class="$FirstLast">$Name</a></li>
			<% end_loop %>
		</ul>
	</div>
	<% end_if %>

	<div class="span4 feature">
		<% if $FeatureOneTitle %>
			<h2><% if $FeatureOneCategory %><i class="icon-$FeatureOneCategory" aria-hidden="true"></i> <% end_if %>$FeatureOneTitle</h2>
		<% end_if %>
		<% if FeatureOneContent %>
			$FeatureOneContent
		<% end_if %>
		<% if $FeatureOneLink && $FeatureOneButtonText %>
			<% if FeatureOneLink %>
				<p><a class="btn" href="$FeatureOneLink.Link">$FeatureOneButtonText</a></p>
			<% end_if %>
		<% end_if %>

		<% if $FeatureTwoTitle %>
			<h2><% if $FeatureTwoCategory %><i class="icon-$FeatureTwoCategory" aria-hidden="true"></i> <% end_if %>$FeatureTwoTitle</h2>
		<% end_if %>
		<% if FeatureTwoContent %>
			$FeatureTwoContent
		<% end_if %>
		<% if $FeatureTwoLink && $FeatureTwoButtonText %>
			<% if FeatureTwoLink %>
				<p><a class="btn" href="$FeatureTwoLink.Link">$FeatureTwoButtonText</a></p>
			<% end_if %>
		<% end_if %>
	</div>

	<% if NewsItems %>
	<div class="span5 resultsList">
		<h2><i class="icon-th-list" aria-hidden="true"></i> <a href="$NewsPage.Link">$NewsPage.Title</a></h2>
		<% loop NewsItems %>
			<article class="$EvenOdd $FirstLast">
				<% include NewsItem %>
			</article>
		<% end_loop %>
	</div>
	<% end_if %>
</div>

<div class="row">
	<% include LastEdited %>
</div>
