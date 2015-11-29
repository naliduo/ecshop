




<!DOCTYPE html>
<html class="   ">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    
    <title>JSON-js/json.js at master · douglascrockford/JSON-js · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="douglascrockford/JSON-js" name="twitter:title" /><meta content="JSON-js - JSON in JavaScript" name="twitter:description" /><meta content="https://avatars1.githubusercontent.com/u/262641?v=1&amp;s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars1.githubusercontent.com/u/262641?v=1&amp;s=400" property="og:image" /><meta content="douglascrockford/JSON-js" property="og:title" /><meta content="https://github.com/douglascrockford/JSON-js" property="og:url" /><meta content="JSON-js - JSON in JavaScript" property="og:description" />

    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035">
    

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="7005FC42:2B9C:95FEA95:53DE31C2" name="octolytics-dimension-request_id" />
    

    
    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param" />
<meta content="BHjUr5G98PnW7IEi/Vme/Eo62LZ8vttQEj3sGSH13QyVGhZ4lD9PFl+e+t7QATfjZc2LSDJFwyBLznr1lz5FNA==" name="csrf-token" />

    <link href="https://assets-cdn.github.com/assets/github-8488336393a59083828e685a8702f8734352719a.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://assets-cdn.github.com/assets/github2-6f603f8712a3ad84b467294bd7ff80bafef0dfa6.css" media="all" rel="stylesheet" type="text/css" />
    


    <meta http-equiv="x-pjax-version" content="b97903e118817dc3b1b23f8b995593f2">

      
  <meta name="description" content="JSON-js - JSON in JavaScript">


  <meta content="262641" name="octolytics-dimension-user_id" /><meta content="douglascrockford" name="octolytics-dimension-user_login" /><meta content="1092277" name="octolytics-dimension-repository_id" /><meta content="douglascrockford/JSON-js" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="1092277" name="octolytics-dimension-repository_network_root_id" /><meta content="douglascrockford/JSON-js" name="octolytics-dimension-repository_network_root_nwo" />

  <link href="https://github.com/douglascrockford/JSON-js/commits/master.atom" rel="alternate" title="Recent Commits to JSON-js:master" type="application/atom+xml">

  </head>


  <body class="logged_out  env-production windows vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      
      


      
      <div class="header header-logged-out">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions">
        <a class="button primary" href="/join">Sign up</a>
      <a class="button signin" href="/login?return_to=%2Fdouglascrockford%2FJSON-js%2Fblob%2Fmaster%2Fjson.js">Sign in</a>
    </div>

    <div class="command-bar js-command-bar  in-repository">

      <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
          <li class="features"><a href="/features">Features</a></li>
          <li class="enterprise"><a href="https://enterprise.github.com/">Enterprise</a></li>
          <li class="blog"><a href="/blog">Blog</a></li>
      </ul>
        <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<div class="commandbar">
  <span class="message"></span>
  <input type="text" data-hotkey="s, /" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    
    data-repo="douglascrockford/JSON-js"
  >
  <div class="display hidden"></div>
</div>

    <input type="hidden" name="nwo" value="douglascrockford/JSON-js">

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target" role="button" aria-haspopup="true">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container" aria-hidden="true">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked">
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global">
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="help tooltipped tooltipped-s" aria-label="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
    </div>

  </div>
</div>



      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        
<ul class="pagehead-actions">


  <li>
      <a href="/login?return_to=%2Fdouglascrockford%2FJSON-js"
    class="minibutton with-count star-button tooltipped tooltipped-n"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <span class="octicon octicon-star"></span>
    Star
  </a>

    <a class="social-count js-social-count" href="/douglascrockford/JSON-js/stargazers">
      4,485
    </a>

  </li>

    <li>
      <a href="/login?return_to=%2Fdouglascrockford%2FJSON-js"
        class="minibutton with-count js-toggler-target fork-button tooltipped tooltipped-n"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-repo-forked"></span>
        Fork
      </a>
      <a href="/douglascrockford/JSON-js/network" class="social-count">
        2,874
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/douglascrockford" class="url fn" itemprop="url" rel="author"><span itemprop="title">douglascrockford</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/douglascrockford/JSON-js" class="js-current-repository js-repo-home-link">JSON-js</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders" data-issue-count-url="/douglascrockford/JSON-js/issues/counts">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped tooltipped-w" aria-label="Code">
        <a href="/douglascrockford/JSON-js" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /douglascrockford/JSON-js">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


      <li class="tooltipped tooltipped-w" aria-label="Pull Requests">
        <a href="/douglascrockford/JSON-js/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g p" data-selected-links="repo_pulls /douglascrockford/JSON-js/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class="js-pull-replace-counter"></span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped tooltipped-w" aria-label="Pulse">
        <a href="/douglascrockford/JSON-js/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /douglascrockford/JSON-js/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Graphs">
        <a href="/douglascrockford/JSON-js/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /douglascrockford/JSON-js/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

              <div class="only-with-full-nav">
                

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="input-group">
    <input type="text" class="input-mini input-monospace js-url-field"
           value="https://github.com/douglascrockford/JSON-js.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/douglascrockford/JSON-js.git" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="input-group">
    <input type="text" class="input-mini input-monospace js-url-field"
           value="https://github.com/douglascrockford/JSON-js" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/douglascrockford/JSON-js" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</p>


  <a href="http://windows.github.com" class="minibutton sidebar-button" title="Save douglascrockford/JSON-js to your computer and use it in GitHub Desktop." aria-label="Save douglascrockford/JSON-js to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>

                <a href="/douglascrockford/JSON-js/archive/master.zip"
                   class="minibutton sidebar-button"
                   aria-label="Download douglascrockford/JSON-js as a zip file"
                   title="Download douglascrockford/JSON-js as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<a href="/douglascrockford/JSON-js/blob/3d7767b6b1f3da363c625ff54e63bbf20e9e83ac/json.js" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:0a42269d92faeff8bd150ef8bb11c24a -->

<div class="file-navigation">
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target css-truncate" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    title="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/douglascrockford/JSON-js/blob/master/json.js"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="button-group right">
    <a href="/douglascrockford/JSON-js/find/master"
          class="js-show-file-finder minibutton empty-icon tooltipped tooltipped-s"
          data-pjax
          data-hotkey="t"
          aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button class="js-zeroclipboard minibutton zeroclipboard-button"
          data-clipboard-text="json.js"
          aria-label="Copy to clipboard"
          data-copied-hint="Copied!">
      <span class="octicon octicon-clippy"></span>
    </button>
  </div>

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/douglascrockford/JSON-js" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">JSON-js</span></a></span></span><span class="separator"> / </span><strong class="final-path">json.js</strong>
  </div>
</div>


  <div class="commit file-history-tease">
      <img alt="Douglas Crockford" class="main-avatar" data-user="262641" height="24" src="https://avatars1.githubusercontent.com/u/262641?s=48" width="24" />
      <span class="author"><a href="/douglascrockford" rel="author">douglascrockford</a></span>
      <time datetime="2014-02-04T12:44:41-08:00" is="relative-time">February 04, 2014</time>
      <div class="commit-title">
          <a href="/douglascrockford/JSON-js/commit/3d7767b6b1f3da363c625ff54e63bbf20e9e83ac" class="message" data-pjax="true" title="IE8">IE8</a>
      </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>1</strong>  contributor</a></p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img alt="Douglas Crockford" data-user="262641" height="24" src="https://avatars1.githubusercontent.com/u/262641?s=48" width="24" />
            <a href="/douglascrockford">douglascrockford</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file-box">
  <div class="file">
    <div class="meta clearfix">
      <div class="info file-name">
          <span>539 lines (410 sloc)</span>
          <span class="meta-divider"></span>
        <span>19.728 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
          <a href="/douglascrockford/JSON-js/raw/master/json.js" class="minibutton " id="raw-url">Raw</a>
            <a href="/douglascrockford/JSON-js/blame/master/json.js" class="minibutton js-update-url-with-hash">Blame</a>
          <a href="/douglascrockford/JSON-js/commits/master/json.js" class="minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->

          <a class="octicon-button tooltipped tooltipped-nw"
             href="http://windows.github.com" aria-label="Open this file in GitHub for Windows">
              <span class="octicon octicon-device-desktop"></span>
          </a>

            <a class="octicon-button disabled tooltipped tooltipped-w" href="#"
               aria-label="You must be signed in to make or propose changes"><span class="octicon octicon-pencil"></span></a>

          <a class="octicon-button danger disabled tooltipped tooltipped-w" href="#"
             aria-label="You must be signed in to make or propose changes">
          <span class="octicon octicon-trashcan"></span>
        </a>
      </div><!-- /.actions -->
    </div>
      
  <div class="blob-wrapper data type-javascript">
       <table class="file-code file-diff tab-size-8">
         <tr class="file-code-line">
           <td class="blob-line-nums">
             <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
<span id="L227" rel="#L227">227</span>
<span id="L228" rel="#L228">228</span>
<span id="L229" rel="#L229">229</span>
<span id="L230" rel="#L230">230</span>
<span id="L231" rel="#L231">231</span>
<span id="L232" rel="#L232">232</span>
<span id="L233" rel="#L233">233</span>
<span id="L234" rel="#L234">234</span>
<span id="L235" rel="#L235">235</span>
<span id="L236" rel="#L236">236</span>
<span id="L237" rel="#L237">237</span>
<span id="L238" rel="#L238">238</span>
<span id="L239" rel="#L239">239</span>
<span id="L240" rel="#L240">240</span>
<span id="L241" rel="#L241">241</span>
<span id="L242" rel="#L242">242</span>
<span id="L243" rel="#L243">243</span>
<span id="L244" rel="#L244">244</span>
<span id="L245" rel="#L245">245</span>
<span id="L246" rel="#L246">246</span>
<span id="L247" rel="#L247">247</span>
<span id="L248" rel="#L248">248</span>
<span id="L249" rel="#L249">249</span>
<span id="L250" rel="#L250">250</span>
<span id="L251" rel="#L251">251</span>
<span id="L252" rel="#L252">252</span>
<span id="L253" rel="#L253">253</span>
<span id="L254" rel="#L254">254</span>
<span id="L255" rel="#L255">255</span>
<span id="L256" rel="#L256">256</span>
<span id="L257" rel="#L257">257</span>
<span id="L258" rel="#L258">258</span>
<span id="L259" rel="#L259">259</span>
<span id="L260" rel="#L260">260</span>
<span id="L261" rel="#L261">261</span>
<span id="L262" rel="#L262">262</span>
<span id="L263" rel="#L263">263</span>
<span id="L264" rel="#L264">264</span>
<span id="L265" rel="#L265">265</span>
<span id="L266" rel="#L266">266</span>
<span id="L267" rel="#L267">267</span>
<span id="L268" rel="#L268">268</span>
<span id="L269" rel="#L269">269</span>
<span id="L270" rel="#L270">270</span>
<span id="L271" rel="#L271">271</span>
<span id="L272" rel="#L272">272</span>
<span id="L273" rel="#L273">273</span>
<span id="L274" rel="#L274">274</span>
<span id="L275" rel="#L275">275</span>
<span id="L276" rel="#L276">276</span>
<span id="L277" rel="#L277">277</span>
<span id="L278" rel="#L278">278</span>
<span id="L279" rel="#L279">279</span>
<span id="L280" rel="#L280">280</span>
<span id="L281" rel="#L281">281</span>
<span id="L282" rel="#L282">282</span>
<span id="L283" rel="#L283">283</span>
<span id="L284" rel="#L284">284</span>
<span id="L285" rel="#L285">285</span>
<span id="L286" rel="#L286">286</span>
<span id="L287" rel="#L287">287</span>
<span id="L288" rel="#L288">288</span>
<span id="L289" rel="#L289">289</span>
<span id="L290" rel="#L290">290</span>
<span id="L291" rel="#L291">291</span>
<span id="L292" rel="#L292">292</span>
<span id="L293" rel="#L293">293</span>
<span id="L294" rel="#L294">294</span>
<span id="L295" rel="#L295">295</span>
<span id="L296" rel="#L296">296</span>
<span id="L297" rel="#L297">297</span>
<span id="L298" rel="#L298">298</span>
<span id="L299" rel="#L299">299</span>
<span id="L300" rel="#L300">300</span>
<span id="L301" rel="#L301">301</span>
<span id="L302" rel="#L302">302</span>
<span id="L303" rel="#L303">303</span>
<span id="L304" rel="#L304">304</span>
<span id="L305" rel="#L305">305</span>
<span id="L306" rel="#L306">306</span>
<span id="L307" rel="#L307">307</span>
<span id="L308" rel="#L308">308</span>
<span id="L309" rel="#L309">309</span>
<span id="L310" rel="#L310">310</span>
<span id="L311" rel="#L311">311</span>
<span id="L312" rel="#L312">312</span>
<span id="L313" rel="#L313">313</span>
<span id="L314" rel="#L314">314</span>
<span id="L315" rel="#L315">315</span>
<span id="L316" rel="#L316">316</span>
<span id="L317" rel="#L317">317</span>
<span id="L318" rel="#L318">318</span>
<span id="L319" rel="#L319">319</span>
<span id="L320" rel="#L320">320</span>
<span id="L321" rel="#L321">321</span>
<span id="L322" rel="#L322">322</span>
<span id="L323" rel="#L323">323</span>
<span id="L324" rel="#L324">324</span>
<span id="L325" rel="#L325">325</span>
<span id="L326" rel="#L326">326</span>
<span id="L327" rel="#L327">327</span>
<span id="L328" rel="#L328">328</span>
<span id="L329" rel="#L329">329</span>
<span id="L330" rel="#L330">330</span>
<span id="L331" rel="#L331">331</span>
<span id="L332" rel="#L332">332</span>
<span id="L333" rel="#L333">333</span>
<span id="L334" rel="#L334">334</span>
<span id="L335" rel="#L335">335</span>
<span id="L336" rel="#L336">336</span>
<span id="L337" rel="#L337">337</span>
<span id="L338" rel="#L338">338</span>
<span id="L339" rel="#L339">339</span>
<span id="L340" rel="#L340">340</span>
<span id="L341" rel="#L341">341</span>
<span id="L342" rel="#L342">342</span>
<span id="L343" rel="#L343">343</span>
<span id="L344" rel="#L344">344</span>
<span id="L345" rel="#L345">345</span>
<span id="L346" rel="#L346">346</span>
<span id="L347" rel="#L347">347</span>
<span id="L348" rel="#L348">348</span>
<span id="L349" rel="#L349">349</span>
<span id="L350" rel="#L350">350</span>
<span id="L351" rel="#L351">351</span>
<span id="L352" rel="#L352">352</span>
<span id="L353" rel="#L353">353</span>
<span id="L354" rel="#L354">354</span>
<span id="L355" rel="#L355">355</span>
<span id="L356" rel="#L356">356</span>
<span id="L357" rel="#L357">357</span>
<span id="L358" rel="#L358">358</span>
<span id="L359" rel="#L359">359</span>
<span id="L360" rel="#L360">360</span>
<span id="L361" rel="#L361">361</span>
<span id="L362" rel="#L362">362</span>
<span id="L363" rel="#L363">363</span>
<span id="L364" rel="#L364">364</span>
<span id="L365" rel="#L365">365</span>
<span id="L366" rel="#L366">366</span>
<span id="L367" rel="#L367">367</span>
<span id="L368" rel="#L368">368</span>
<span id="L369" rel="#L369">369</span>
<span id="L370" rel="#L370">370</span>
<span id="L371" rel="#L371">371</span>
<span id="L372" rel="#L372">372</span>
<span id="L373" rel="#L373">373</span>
<span id="L374" rel="#L374">374</span>
<span id="L375" rel="#L375">375</span>
<span id="L376" rel="#L376">376</span>
<span id="L377" rel="#L377">377</span>
<span id="L378" rel="#L378">378</span>
<span id="L379" rel="#L379">379</span>
<span id="L380" rel="#L380">380</span>
<span id="L381" rel="#L381">381</span>
<span id="L382" rel="#L382">382</span>
<span id="L383" rel="#L383">383</span>
<span id="L384" rel="#L384">384</span>
<span id="L385" rel="#L385">385</span>
<span id="L386" rel="#L386">386</span>
<span id="L387" rel="#L387">387</span>
<span id="L388" rel="#L388">388</span>
<span id="L389" rel="#L389">389</span>
<span id="L390" rel="#L390">390</span>
<span id="L391" rel="#L391">391</span>
<span id="L392" rel="#L392">392</span>
<span id="L393" rel="#L393">393</span>
<span id="L394" rel="#L394">394</span>
<span id="L395" rel="#L395">395</span>
<span id="L396" rel="#L396">396</span>
<span id="L397" rel="#L397">397</span>
<span id="L398" rel="#L398">398</span>
<span id="L399" rel="#L399">399</span>
<span id="L400" rel="#L400">400</span>
<span id="L401" rel="#L401">401</span>
<span id="L402" rel="#L402">402</span>
<span id="L403" rel="#L403">403</span>
<span id="L404" rel="#L404">404</span>
<span id="L405" rel="#L405">405</span>
<span id="L406" rel="#L406">406</span>
<span id="L407" rel="#L407">407</span>
<span id="L408" rel="#L408">408</span>
<span id="L409" rel="#L409">409</span>
<span id="L410" rel="#L410">410</span>
<span id="L411" rel="#L411">411</span>
<span id="L412" rel="#L412">412</span>
<span id="L413" rel="#L413">413</span>
<span id="L414" rel="#L414">414</span>
<span id="L415" rel="#L415">415</span>
<span id="L416" rel="#L416">416</span>
<span id="L417" rel="#L417">417</span>
<span id="L418" rel="#L418">418</span>
<span id="L419" rel="#L419">419</span>
<span id="L420" rel="#L420">420</span>
<span id="L421" rel="#L421">421</span>
<span id="L422" rel="#L422">422</span>
<span id="L423" rel="#L423">423</span>
<span id="L424" rel="#L424">424</span>
<span id="L425" rel="#L425">425</span>
<span id="L426" rel="#L426">426</span>
<span id="L427" rel="#L427">427</span>
<span id="L428" rel="#L428">428</span>
<span id="L429" rel="#L429">429</span>
<span id="L430" rel="#L430">430</span>
<span id="L431" rel="#L431">431</span>
<span id="L432" rel="#L432">432</span>
<span id="L433" rel="#L433">433</span>
<span id="L434" rel="#L434">434</span>
<span id="L435" rel="#L435">435</span>
<span id="L436" rel="#L436">436</span>
<span id="L437" rel="#L437">437</span>
<span id="L438" rel="#L438">438</span>
<span id="L439" rel="#L439">439</span>
<span id="L440" rel="#L440">440</span>
<span id="L441" rel="#L441">441</span>
<span id="L442" rel="#L442">442</span>
<span id="L443" rel="#L443">443</span>
<span id="L444" rel="#L444">444</span>
<span id="L445" rel="#L445">445</span>
<span id="L446" rel="#L446">446</span>
<span id="L447" rel="#L447">447</span>
<span id="L448" rel="#L448">448</span>
<span id="L449" rel="#L449">449</span>
<span id="L450" rel="#L450">450</span>
<span id="L451" rel="#L451">451</span>
<span id="L452" rel="#L452">452</span>
<span id="L453" rel="#L453">453</span>
<span id="L454" rel="#L454">454</span>
<span id="L455" rel="#L455">455</span>
<span id="L456" rel="#L456">456</span>
<span id="L457" rel="#L457">457</span>
<span id="L458" rel="#L458">458</span>
<span id="L459" rel="#L459">459</span>
<span id="L460" rel="#L460">460</span>
<span id="L461" rel="#L461">461</span>
<span id="L462" rel="#L462">462</span>
<span id="L463" rel="#L463">463</span>
<span id="L464" rel="#L464">464</span>
<span id="L465" rel="#L465">465</span>
<span id="L466" rel="#L466">466</span>
<span id="L467" rel="#L467">467</span>
<span id="L468" rel="#L468">468</span>
<span id="L469" rel="#L469">469</span>
<span id="L470" rel="#L470">470</span>
<span id="L471" rel="#L471">471</span>
<span id="L472" rel="#L472">472</span>
<span id="L473" rel="#L473">473</span>
<span id="L474" rel="#L474">474</span>
<span id="L475" rel="#L475">475</span>
<span id="L476" rel="#L476">476</span>
<span id="L477" rel="#L477">477</span>
<span id="L478" rel="#L478">478</span>
<span id="L479" rel="#L479">479</span>
<span id="L480" rel="#L480">480</span>
<span id="L481" rel="#L481">481</span>
<span id="L482" rel="#L482">482</span>
<span id="L483" rel="#L483">483</span>
<span id="L484" rel="#L484">484</span>
<span id="L485" rel="#L485">485</span>
<span id="L486" rel="#L486">486</span>
<span id="L487" rel="#L487">487</span>
<span id="L488" rel="#L488">488</span>
<span id="L489" rel="#L489">489</span>
<span id="L490" rel="#L490">490</span>
<span id="L491" rel="#L491">491</span>
<span id="L492" rel="#L492">492</span>
<span id="L493" rel="#L493">493</span>
<span id="L494" rel="#L494">494</span>
<span id="L495" rel="#L495">495</span>
<span id="L496" rel="#L496">496</span>
<span id="L497" rel="#L497">497</span>
<span id="L498" rel="#L498">498</span>
<span id="L499" rel="#L499">499</span>
<span id="L500" rel="#L500">500</span>
<span id="L501" rel="#L501">501</span>
<span id="L502" rel="#L502">502</span>
<span id="L503" rel="#L503">503</span>
<span id="L504" rel="#L504">504</span>
<span id="L505" rel="#L505">505</span>
<span id="L506" rel="#L506">506</span>
<span id="L507" rel="#L507">507</span>
<span id="L508" rel="#L508">508</span>
<span id="L509" rel="#L509">509</span>
<span id="L510" rel="#L510">510</span>
<span id="L511" rel="#L511">511</span>
<span id="L512" rel="#L512">512</span>
<span id="L513" rel="#L513">513</span>
<span id="L514" rel="#L514">514</span>
<span id="L515" rel="#L515">515</span>
<span id="L516" rel="#L516">516</span>
<span id="L517" rel="#L517">517</span>
<span id="L518" rel="#L518">518</span>
<span id="L519" rel="#L519">519</span>
<span id="L520" rel="#L520">520</span>
<span id="L521" rel="#L521">521</span>
<span id="L522" rel="#L522">522</span>
<span id="L523" rel="#L523">523</span>
<span id="L524" rel="#L524">524</span>
<span id="L525" rel="#L525">525</span>
<span id="L526" rel="#L526">526</span>
<span id="L527" rel="#L527">527</span>
<span id="L528" rel="#L528">528</span>
<span id="L529" rel="#L529">529</span>
<span id="L530" rel="#L530">530</span>
<span id="L531" rel="#L531">531</span>
<span id="L532" rel="#L532">532</span>
<span id="L533" rel="#L533">533</span>
<span id="L534" rel="#L534">534</span>
<span id="L535" rel="#L535">535</span>
<span id="L536" rel="#L536">536</span>
<span id="L537" rel="#L537">537</span>
<span id="L538" rel="#L538">538</span>

           </td>
           <td class="blob-line-code"><div class="code-body highlight"><pre><div class='line' id='LC1'><span class="cm">/*</span></div><div class='line' id='LC2'><span class="cm">    json.js</span></div><div class='line' id='LC3'><span class="cm">    2014-02-04</span></div><div class='line' id='LC4'><br/></div><div class='line' id='LC5'><span class="cm">    Public Domain</span></div><div class='line' id='LC6'><br/></div><div class='line' id='LC7'><span class="cm">    No warranty expressed or implied. Use at your own risk.</span></div><div class='line' id='LC8'><br/></div><div class='line' id='LC9'><span class="cm">    This file has been superceded by http://www.JSON.org/json2.js</span></div><div class='line' id='LC10'><br/></div><div class='line' id='LC11'><span class="cm">    See http://www.JSON.org/js.html</span></div><div class='line' id='LC12'><br/></div><div class='line' id='LC13'><span class="cm">    This code should be minified before deployment.</span></div><div class='line' id='LC14'><span class="cm">    See http://javascript.crockford.com/jsmin.html</span></div><div class='line' id='LC15'><br/></div><div class='line' id='LC16'><span class="cm">    USE YOUR OWN COPY. IT IS EXTREMELY UNWISE TO LOAD CODE FROM SERVERS YOU DO</span></div><div class='line' id='LC17'><span class="cm">    NOT CONTROL.</span></div><div class='line' id='LC18'><br/></div><div class='line' id='LC19'><span class="cm">    This file adds these methods to JavaScript:</span></div><div class='line' id='LC20'><br/></div><div class='line' id='LC21'><span class="cm">        object.toJSONString(whitelist)</span></div><div class='line' id='LC22'><span class="cm">            This method produce a JSON text from a JavaScript value.</span></div><div class='line' id='LC23'><span class="cm">            It must not contain any cyclical references. Illegal values</span></div><div class='line' id='LC24'><span class="cm">            will be excluded.</span></div><div class='line' id='LC25'><br/></div><div class='line' id='LC26'><span class="cm">            The default conversion for dates is to an ISO string. You can</span></div><div class='line' id='LC27'><span class="cm">            add a toJSONString method to any date object to get a different</span></div><div class='line' id='LC28'><span class="cm">            representation.</span></div><div class='line' id='LC29'><br/></div><div class='line' id='LC30'><span class="cm">            The object and array methods can take an optional whitelist</span></div><div class='line' id='LC31'><span class="cm">            argument. A whitelist is an array of strings. If it is provided,</span></div><div class='line' id='LC32'><span class="cm">            keys in objects not found in the whitelist are excluded.</span></div><div class='line' id='LC33'><br/></div><div class='line' id='LC34'><span class="cm">        string.parseJSON(filter)</span></div><div class='line' id='LC35'><span class="cm">            This method parses a JSON text to produce an object or</span></div><div class='line' id='LC36'><span class="cm">            array. It can throw a SyntaxError exception.</span></div><div class='line' id='LC37'><br/></div><div class='line' id='LC38'><span class="cm">            The optional filter parameter is a function which can filter and</span></div><div class='line' id='LC39'><span class="cm">            transform the results. It receives each of the keys and values, and</span></div><div class='line' id='LC40'><span class="cm">            its return value is used instead of the original value. If it</span></div><div class='line' id='LC41'><span class="cm">            returns what it received, then structure is not modified. If it</span></div><div class='line' id='LC42'><span class="cm">            returns undefined then the member is deleted.</span></div><div class='line' id='LC43'><br/></div><div class='line' id='LC44'><span class="cm">            Example:</span></div><div class='line' id='LC45'><br/></div><div class='line' id='LC46'><span class="cm">            // Parse the text. If a key contains the string &#39;date&#39; then</span></div><div class='line' id='LC47'><span class="cm">            // convert the value to a date.</span></div><div class='line' id='LC48'><br/></div><div class='line' id='LC49'><span class="cm">            myData = text.parseJSON(function (key, value) {</span></div><div class='line' id='LC50'><span class="cm">                return key.indexOf(&#39;date&#39;) &gt;= 0 ? new Date(value) : value;</span></div><div class='line' id='LC51'><span class="cm">            });</span></div><div class='line' id='LC52'><br/></div><div class='line' id='LC53'><span class="cm">    This file will break programs with improper for..in loops. See</span></div><div class='line' id='LC54'><span class="cm">    http://yuiblog.com/blog/2006/09/26/for-in-intrigue/</span></div><div class='line' id='LC55'><br/></div><div class='line' id='LC56'><span class="cm">    This file creates a global JSON object containing two methods: stringify</span></div><div class='line' id='LC57'><span class="cm">    and parse.</span></div><div class='line' id='LC58'><br/></div><div class='line' id='LC59'><span class="cm">        JSON.stringify(value, replacer, space)</span></div><div class='line' id='LC60'><span class="cm">            value       any JavaScript value, usually an object or array.</span></div><div class='line' id='LC61'><br/></div><div class='line' id='LC62'><span class="cm">            replacer    an optional parameter that determines how object</span></div><div class='line' id='LC63'><span class="cm">                        values are stringified for objects. It can be a</span></div><div class='line' id='LC64'><span class="cm">                        function or an array of strings.</span></div><div class='line' id='LC65'><br/></div><div class='line' id='LC66'><span class="cm">            space       an optional parameter that specifies the indentation</span></div><div class='line' id='LC67'><span class="cm">                        of nested structures. If it is omitted, the text will</span></div><div class='line' id='LC68'><span class="cm">                        be packed without extra whitespace. If it is a number,</span></div><div class='line' id='LC69'><span class="cm">                        it will specify the number of spaces to indent at each</span></div><div class='line' id='LC70'><span class="cm">                        level. If it is a string (such as &#39;\t&#39; or &#39;&amp;nbsp;&#39;),</span></div><div class='line' id='LC71'><span class="cm">                        it contains the characters used to indent at each level.</span></div><div class='line' id='LC72'><br/></div><div class='line' id='LC73'><span class="cm">            This method produces a JSON text from a JavaScript value.</span></div><div class='line' id='LC74'><br/></div><div class='line' id='LC75'><span class="cm">            When an object value is found, if the object contains a toJSON</span></div><div class='line' id='LC76'><span class="cm">            method, its toJSON method will be called and the result will be</span></div><div class='line' id='LC77'><span class="cm">            stringified. A toJSON method does not serialize: it returns the</span></div><div class='line' id='LC78'><span class="cm">            value represented by the name/value pair that should be serialized,</span></div><div class='line' id='LC79'><span class="cm">            or undefined if nothing should be serialized. The toJSON method</span></div><div class='line' id='LC80'><span class="cm">            will be passed the key associated with the value, and this will be</span></div><div class='line' id='LC81'><span class="cm">            bound to the object holding the key.</span></div><div class='line' id='LC82'><br/></div><div class='line' id='LC83'><span class="cm">            For example, this would serialize Dates as ISO strings.</span></div><div class='line' id='LC84'><br/></div><div class='line' id='LC85'><span class="cm">                Date.prototype.toJSON = function (key) {</span></div><div class='line' id='LC86'><span class="cm">                    function f(n) {</span></div><div class='line' id='LC87'><span class="cm">                        // Format integers to have at least two digits.</span></div><div class='line' id='LC88'><span class="cm">                        return n &lt; 10 ? &#39;0&#39; + n : n;</span></div><div class='line' id='LC89'><span class="cm">                    }</span></div><div class='line' id='LC90'><br/></div><div class='line' id='LC91'><span class="cm">                    return this.getUTCFullYear()   + &#39;-&#39; +</span></div><div class='line' id='LC92'><span class="cm">                         f(this.getUTCMonth() + 1) + &#39;-&#39; +</span></div><div class='line' id='LC93'><span class="cm">                         f(this.getUTCDate())      + &#39;T&#39; +</span></div><div class='line' id='LC94'><span class="cm">                         f(this.getUTCHours())     + &#39;:&#39; +</span></div><div class='line' id='LC95'><span class="cm">                         f(this.getUTCMinutes())   + &#39;:&#39; +</span></div><div class='line' id='LC96'><span class="cm">                         f(this.getUTCSeconds())   + &#39;Z&#39;;</span></div><div class='line' id='LC97'><span class="cm">                };</span></div><div class='line' id='LC98'><br/></div><div class='line' id='LC99'><span class="cm">            You can provide an optional replacer method. It will be passed the</span></div><div class='line' id='LC100'><span class="cm">            key and value of each member, with this bound to the containing</span></div><div class='line' id='LC101'><span class="cm">            object. The value that is returned from your method will be</span></div><div class='line' id='LC102'><span class="cm">            serialized. If your method returns undefined, then the member will</span></div><div class='line' id='LC103'><span class="cm">            be excluded from the serialization.</span></div><div class='line' id='LC104'><br/></div><div class='line' id='LC105'><span class="cm">            If the replacer parameter is an array of strings, then it will be</span></div><div class='line' id='LC106'><span class="cm">            used to select the members to be serialized. It filters the results</span></div><div class='line' id='LC107'><span class="cm">            such that only members with keys listed in the replacer array are</span></div><div class='line' id='LC108'><span class="cm">            stringified.</span></div><div class='line' id='LC109'><br/></div><div class='line' id='LC110'><span class="cm">            Values that do not have JSON representations, such as undefined or</span></div><div class='line' id='LC111'><span class="cm">            functions, will not be serialized. Such values in objects will be</span></div><div class='line' id='LC112'><span class="cm">            dropped; in arrays they will be replaced with null. You can use</span></div><div class='line' id='LC113'><span class="cm">            a replacer function to replace those with JSON values.</span></div><div class='line' id='LC114'><span class="cm">            JSON.stringify(undefined) returns undefined.</span></div><div class='line' id='LC115'><br/></div><div class='line' id='LC116'><span class="cm">            The optional space parameter produces a stringification of the</span></div><div class='line' id='LC117'><span class="cm">            value that is filled with line breaks and indentation to make it</span></div><div class='line' id='LC118'><span class="cm">            easier to read.</span></div><div class='line' id='LC119'><br/></div><div class='line' id='LC120'><span class="cm">            If the space parameter is a non-empty string, then that string will</span></div><div class='line' id='LC121'><span class="cm">            be used for indentation. If the space parameter is a number, then</span></div><div class='line' id='LC122'><span class="cm">            the indentation will be that many spaces.</span></div><div class='line' id='LC123'><br/></div><div class='line' id='LC124'><span class="cm">            Example:</span></div><div class='line' id='LC125'><br/></div><div class='line' id='LC126'><span class="cm">            text = JSON.stringify([&#39;e&#39;, {pluribus: &#39;unum&#39;}]);</span></div><div class='line' id='LC127'><span class="cm">            // text is &#39;[&quot;e&quot;,{&quot;pluribus&quot;:&quot;unum&quot;}]&#39;</span></div><div class='line' id='LC128'><br/></div><div class='line' id='LC129'><br/></div><div class='line' id='LC130'><span class="cm">            text = JSON.stringify([&#39;e&#39;, {pluribus: &#39;unum&#39;}], null, &#39;\t&#39;);</span></div><div class='line' id='LC131'><span class="cm">            // text is &#39;[\n\t&quot;e&quot;,\n\t{\n\t\t&quot;pluribus&quot;: &quot;unum&quot;\n\t}\n]&#39;</span></div><div class='line' id='LC132'><br/></div><div class='line' id='LC133'><span class="cm">            text = JSON.stringify([new Date()], function (key, value) {</span></div><div class='line' id='LC134'><span class="cm">                return this[key] instanceof Date ?</span></div><div class='line' id='LC135'><span class="cm">                    &#39;Date(&#39; + this[key] + &#39;)&#39; : value;</span></div><div class='line' id='LC136'><span class="cm">            });</span></div><div class='line' id='LC137'><span class="cm">            // text is &#39;[&quot;Date(---current time---)&quot;]&#39;</span></div><div class='line' id='LC138'><br/></div><div class='line' id='LC139'><br/></div><div class='line' id='LC140'><span class="cm">        JSON.parse(text, reviver)</span></div><div class='line' id='LC141'><span class="cm">            This method parses a JSON text to produce an object or array.</span></div><div class='line' id='LC142'><span class="cm">            It can throw a SyntaxError exception.</span></div><div class='line' id='LC143'><br/></div><div class='line' id='LC144'><span class="cm">            The optional reviver parameter is a function that can filter and</span></div><div class='line' id='LC145'><span class="cm">            transform the results. It receives each of the keys and values,</span></div><div class='line' id='LC146'><span class="cm">            and its return value is used instead of the original value.</span></div><div class='line' id='LC147'><span class="cm">            If it returns what it received, then the structure is not modified.</span></div><div class='line' id='LC148'><span class="cm">            If it returns undefined then the member is deleted.</span></div><div class='line' id='LC149'><br/></div><div class='line' id='LC150'><span class="cm">            Example:</span></div><div class='line' id='LC151'><br/></div><div class='line' id='LC152'><span class="cm">            // Parse the text. Values that look like ISO date strings will</span></div><div class='line' id='LC153'><span class="cm">            // be converted to Date objects.</span></div><div class='line' id='LC154'><br/></div><div class='line' id='LC155'><span class="cm">            myData = JSON.parse(text, function (key, value) {</span></div><div class='line' id='LC156'><span class="cm">                var a;</span></div><div class='line' id='LC157'><span class="cm">                if (typeof value === &#39;string&#39;) {</span></div><div class='line' id='LC158'><span class="cm">                    a =</span></div><div class='line' id='LC159'><span class="cm">/^(\d{4})-(\d{2})-(\d{2})T(\d{2}):(\d{2}):(\d{2}(?:\.\d*)?)Z$/.exec(value);</span></div><div class='line' id='LC160'><span class="cm">                    if (a) {</span></div><div class='line' id='LC161'><span class="cm">                        return new Date(Date.UTC(+a[1], +a[2] - 1, +a[3], +a[4],</span></div><div class='line' id='LC162'><span class="cm">                            +a[5], +a[6]));</span></div><div class='line' id='LC163'><span class="cm">                    }</span></div><div class='line' id='LC164'><span class="cm">                }</span></div><div class='line' id='LC165'><span class="cm">                return value;</span></div><div class='line' id='LC166'><span class="cm">            });</span></div><div class='line' id='LC167'><br/></div><div class='line' id='LC168'><span class="cm">            myData = JSON.parse(&#39;[&quot;Date(09/09/2001)&quot;]&#39;, function (key, value) {</span></div><div class='line' id='LC169'><span class="cm">                var d;</span></div><div class='line' id='LC170'><span class="cm">                if (typeof value === &#39;string&#39; &amp;&amp;</span></div><div class='line' id='LC171'><span class="cm">                        value.slice(0, 5) === &#39;Date(&#39; &amp;&amp;</span></div><div class='line' id='LC172'><span class="cm">                        value.slice(-1) === &#39;)&#39;) {</span></div><div class='line' id='LC173'><span class="cm">                    d = new Date(value.slice(5, -1));</span></div><div class='line' id='LC174'><span class="cm">                    if (d) {</span></div><div class='line' id='LC175'><span class="cm">                        return d;</span></div><div class='line' id='LC176'><span class="cm">                    }</span></div><div class='line' id='LC177'><span class="cm">                }</span></div><div class='line' id='LC178'><span class="cm">                return value;</span></div><div class='line' id='LC179'><span class="cm">            });</span></div><div class='line' id='LC180'><br/></div><div class='line' id='LC181'><br/></div><div class='line' id='LC182'><span class="cm">    This is a reference implementation. You are free to copy, modify, or</span></div><div class='line' id='LC183'><span class="cm">    redistribute.</span></div><div class='line' id='LC184'><span class="cm">*/</span></div><div class='line' id='LC185'><br/></div><div class='line' id='LC186'><span class="cm">/*jslint evil: true, regexp: true, unparam: true */</span></div><div class='line' id='LC187'><br/></div><div class='line' id='LC188'><span class="cm">/*members &quot;&quot;, &quot;\b&quot;, &quot;\t&quot;, &quot;\n&quot;, &quot;\f&quot;, &quot;\r&quot;, &quot;\&quot;&quot;, JSON, &quot;\\&quot;, apply,</span></div><div class='line' id='LC189'><span class="cm">    call, charCodeAt, getUTCDate, getUTCFullYear, getUTCHours,</span></div><div class='line' id='LC190'><span class="cm">    getUTCMinutes, getUTCMonth, getUTCSeconds, hasOwnProperty, join,</span></div><div class='line' id='LC191'><span class="cm">    lastIndex, length, parse, parseJSON, prototype, push, replace, slice,</span></div><div class='line' id='LC192'><span class="cm">    stringify, test, toJSON, toJSONString, toString, valueOf</span></div><div class='line' id='LC193'><span class="cm">*/</span></div><div class='line' id='LC194'><br/></div><div class='line' id='LC195'><br/></div><div class='line' id='LC196'><span class="c1">// Create a JSON object only if one does not already exist. We create the</span></div><div class='line' id='LC197'><span class="c1">// methods in a closure to avoid creating global variables.</span></div><div class='line' id='LC198'><br/></div><div class='line' id='LC199'><span class="k">if</span> <span class="p">(</span><span class="k">typeof</span> <span class="nx">JSON</span> <span class="o">!==</span> <span class="s1">&#39;object&#39;</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC200'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">JSON</span> <span class="o">=</span> <span class="p">{};</span></div><div class='line' id='LC201'><span class="p">}</span></div><div class='line' id='LC202'><br/></div><div class='line' id='LC203'><span class="p">(</span><span class="kd">function</span> <span class="p">()</span> <span class="p">{</span></div><div class='line' id='LC204'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s1">&#39;use strict&#39;</span><span class="p">;</span></div><div class='line' id='LC205'><br/></div><div class='line' id='LC206'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">function</span> <span class="nx">f</span><span class="p">(</span><span class="nx">n</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC207'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// Format integers to have at least two digits.</span></div><div class='line' id='LC208'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="nx">n</span> <span class="o">&lt;</span> <span class="mi">10</span> <span class="o">?</span> <span class="s1">&#39;0&#39;</span> <span class="o">+</span> <span class="nx">n</span> <span class="o">:</span> <span class="nx">n</span><span class="p">;</span></div><div class='line' id='LC209'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC210'><br/></div><div class='line' id='LC211'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="k">typeof</span> <span class="nb">Date</span><span class="p">.</span><span class="nx">prototype</span><span class="p">.</span><span class="nx">toJSON</span> <span class="o">!==</span> <span class="s1">&#39;function&#39;</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC212'><br/></div><div class='line' id='LC213'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">Date</span><span class="p">.</span><span class="nx">prototype</span><span class="p">.</span><span class="nx">toJSON</span> <span class="o">=</span> <span class="kd">function</span> <span class="p">(</span><span class="nx">key</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC214'><br/></div><div class='line' id='LC215'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="nb">isFinite</span><span class="p">(</span><span class="k">this</span><span class="p">.</span><span class="nx">valueOf</span><span class="p">())</span></div><div class='line' id='LC216'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">?</span>     <span class="k">this</span><span class="p">.</span><span class="nx">getUTCFullYear</span><span class="p">()</span>   <span class="o">+</span> <span class="s1">&#39;-&#39;</span> <span class="o">+</span></div><div class='line' id='LC217'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">f</span><span class="p">(</span><span class="k">this</span><span class="p">.</span><span class="nx">getUTCMonth</span><span class="p">()</span> <span class="o">+</span> <span class="mi">1</span><span class="p">)</span> <span class="o">+</span> <span class="s1">&#39;-&#39;</span> <span class="o">+</span></div><div class='line' id='LC218'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">f</span><span class="p">(</span><span class="k">this</span><span class="p">.</span><span class="nx">getUTCDate</span><span class="p">())</span>      <span class="o">+</span> <span class="s1">&#39;T&#39;</span> <span class="o">+</span></div><div class='line' id='LC219'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">f</span><span class="p">(</span><span class="k">this</span><span class="p">.</span><span class="nx">getUTCHours</span><span class="p">())</span>     <span class="o">+</span> <span class="s1">&#39;:&#39;</span> <span class="o">+</span></div><div class='line' id='LC220'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">f</span><span class="p">(</span><span class="k">this</span><span class="p">.</span><span class="nx">getUTCMinutes</span><span class="p">())</span>   <span class="o">+</span> <span class="s1">&#39;:&#39;</span> <span class="o">+</span></div><div class='line' id='LC221'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">f</span><span class="p">(</span><span class="k">this</span><span class="p">.</span><span class="nx">getUTCSeconds</span><span class="p">())</span>   <span class="o">+</span> <span class="s1">&#39;Z&#39;</span></div><div class='line' id='LC222'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">:</span> <span class="kc">null</span><span class="p">;</span></div><div class='line' id='LC223'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">};</span></div><div class='line' id='LC224'><br/></div><div class='line' id='LC225'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">String</span><span class="p">.</span><span class="nx">prototype</span><span class="p">.</span><span class="nx">toJSON</span>      <span class="o">=</span></div><div class='line' id='LC226'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">Number</span><span class="p">.</span><span class="nx">prototype</span><span class="p">.</span><span class="nx">toJSON</span>  <span class="o">=</span></div><div class='line' id='LC227'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">Boolean</span><span class="p">.</span><span class="nx">prototype</span><span class="p">.</span><span class="nx">toJSON</span> <span class="o">=</span> <span class="kd">function</span> <span class="p">(</span><span class="nx">key</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC228'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="k">this</span><span class="p">.</span><span class="nx">valueOf</span><span class="p">();</span></div><div class='line' id='LC229'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">};</span></div><div class='line' id='LC230'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC231'><br/></div><div class='line' id='LC232'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">var</span> <span class="nx">cx</span><span class="p">,</span></div><div class='line' id='LC233'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">escapable</span><span class="p">,</span></div><div class='line' id='LC234'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">gap</span><span class="p">,</span></div><div class='line' id='LC235'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">indent</span><span class="p">,</span></div><div class='line' id='LC236'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">meta</span><span class="p">,</span></div><div class='line' id='LC237'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">rep</span><span class="p">;</span></div><div class='line' id='LC238'><br/></div><div class='line' id='LC239'><br/></div><div class='line' id='LC240'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">function</span> <span class="nx">quote</span><span class="p">(</span><span class="nx">string</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC241'><br/></div><div class='line' id='LC242'><span class="c1">// If the string contains no control characters, no quote characters, and no</span></div><div class='line' id='LC243'><span class="c1">// backslash characters, then we can safely slap some quotes around it.</span></div><div class='line' id='LC244'><span class="c1">// Otherwise we must also replace the offending characters with safe escape</span></div><div class='line' id='LC245'><span class="c1">// sequences.</span></div><div class='line' id='LC246'><br/></div><div class='line' id='LC247'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">escapable</span><span class="p">.</span><span class="nx">lastIndex</span> <span class="o">=</span> <span class="mi">0</span><span class="p">;</span></div><div class='line' id='LC248'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="nx">escapable</span><span class="p">.</span><span class="nx">test</span><span class="p">(</span><span class="nx">string</span><span class="p">)</span> <span class="o">?</span> <span class="s1">&#39;&quot;&#39;</span> <span class="o">+</span> <span class="nx">string</span><span class="p">.</span><span class="nx">replace</span><span class="p">(</span><span class="nx">escapable</span><span class="p">,</span> <span class="kd">function</span> <span class="p">(</span><span class="nx">a</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC249'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">var</span> <span class="nx">c</span> <span class="o">=</span> <span class="nx">meta</span><span class="p">[</span><span class="nx">a</span><span class="p">];</span></div><div class='line' id='LC250'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="k">typeof</span> <span class="nx">c</span> <span class="o">===</span> <span class="s1">&#39;string&#39;</span></div><div class='line' id='LC251'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">?</span> <span class="nx">c</span></div><div class='line' id='LC252'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">:</span> <span class="s1">&#39;\\u&#39;</span> <span class="o">+</span> <span class="p">(</span><span class="s1">&#39;0000&#39;</span> <span class="o">+</span> <span class="nx">a</span><span class="p">.</span><span class="nx">charCodeAt</span><span class="p">(</span><span class="mi">0</span><span class="p">).</span><span class="nx">toString</span><span class="p">(</span><span class="mi">16</span><span class="p">)).</span><span class="nx">slice</span><span class="p">(</span><span class="o">-</span><span class="mi">4</span><span class="p">);</span></div><div class='line' id='LC253'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">})</span> <span class="o">+</span> <span class="s1">&#39;&quot;&#39;</span> <span class="o">:</span> <span class="s1">&#39;&quot;&#39;</span> <span class="o">+</span> <span class="nx">string</span> <span class="o">+</span> <span class="s1">&#39;&quot;&#39;</span><span class="p">;</span></div><div class='line' id='LC254'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC255'><br/></div><div class='line' id='LC256'><br/></div><div class='line' id='LC257'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">function</span> <span class="nx">str</span><span class="p">(</span><span class="nx">key</span><span class="p">,</span> <span class="nx">holder</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC258'><br/></div><div class='line' id='LC259'><span class="c1">// Produce a string from holder[key].</span></div><div class='line' id='LC260'><br/></div><div class='line' id='LC261'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">var</span> <span class="nx">i</span><span class="p">,</span>          <span class="c1">// The loop counter.</span></div><div class='line' id='LC262'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">k</span><span class="p">,</span>          <span class="c1">// The member key.</span></div><div class='line' id='LC263'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">v</span><span class="p">,</span>          <span class="c1">// The member value.</span></div><div class='line' id='LC264'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">length</span><span class="p">,</span></div><div class='line' id='LC265'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">mind</span> <span class="o">=</span> <span class="nx">gap</span><span class="p">,</span></div><div class='line' id='LC266'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">partial</span><span class="p">,</span></div><div class='line' id='LC267'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">value</span> <span class="o">=</span> <span class="nx">holder</span><span class="p">[</span><span class="nx">key</span><span class="p">];</span></div><div class='line' id='LC268'><br/></div><div class='line' id='LC269'><span class="c1">// If the value has a toJSON method, call it to obtain a replacement value.</span></div><div class='line' id='LC270'><br/></div><div class='line' id='LC271'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="nx">value</span> <span class="o">&amp;&amp;</span> <span class="k">typeof</span> <span class="nx">value</span> <span class="o">===</span> <span class="s1">&#39;object&#39;</span> <span class="o">&amp;&amp;</span></div><div class='line' id='LC272'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">typeof</span> <span class="nx">value</span><span class="p">.</span><span class="nx">toJSON</span> <span class="o">===</span> <span class="s1">&#39;function&#39;</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC273'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">value</span> <span class="o">=</span> <span class="nx">value</span><span class="p">.</span><span class="nx">toJSON</span><span class="p">(</span><span class="nx">key</span><span class="p">);</span></div><div class='line' id='LC274'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC275'><br/></div><div class='line' id='LC276'><span class="c1">// If we were called with a replacer function, then call the replacer to</span></div><div class='line' id='LC277'><span class="c1">// obtain a replacement value.</span></div><div class='line' id='LC278'><br/></div><div class='line' id='LC279'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="k">typeof</span> <span class="nx">rep</span> <span class="o">===</span> <span class="s1">&#39;function&#39;</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC280'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">value</span> <span class="o">=</span> <span class="nx">rep</span><span class="p">.</span><span class="nx">call</span><span class="p">(</span><span class="nx">holder</span><span class="p">,</span> <span class="nx">key</span><span class="p">,</span> <span class="nx">value</span><span class="p">);</span></div><div class='line' id='LC281'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC282'><br/></div><div class='line' id='LC283'><span class="c1">// What happens next depends on the value&#39;s type.</span></div><div class='line' id='LC284'><br/></div><div class='line' id='LC285'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">switch</span> <span class="p">(</span><span class="k">typeof</span> <span class="nx">value</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC286'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="s1">&#39;string&#39;</span><span class="o">:</span></div><div class='line' id='LC287'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="nx">quote</span><span class="p">(</span><span class="nx">value</span><span class="p">);</span></div><div class='line' id='LC288'><br/></div><div class='line' id='LC289'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="s1">&#39;number&#39;</span><span class="o">:</span></div><div class='line' id='LC290'><br/></div><div class='line' id='LC291'><span class="c1">// JSON numbers must be finite. Encode non-finite numbers as null.</span></div><div class='line' id='LC292'><br/></div><div class='line' id='LC293'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="nb">isFinite</span><span class="p">(</span><span class="nx">value</span><span class="p">)</span> <span class="o">?</span> <span class="nb">String</span><span class="p">(</span><span class="nx">value</span><span class="p">)</span> <span class="o">:</span> <span class="s1">&#39;null&#39;</span><span class="p">;</span></div><div class='line' id='LC294'><br/></div><div class='line' id='LC295'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="s1">&#39;boolean&#39;</span><span class="o">:</span></div><div class='line' id='LC296'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="s1">&#39;null&#39;</span><span class="o">:</span></div><div class='line' id='LC297'><br/></div><div class='line' id='LC298'><span class="c1">// If the value is a boolean or null, convert it to a string. Note:</span></div><div class='line' id='LC299'><span class="c1">// typeof null does not produce &#39;null&#39;. The case is included here in</span></div><div class='line' id='LC300'><span class="c1">// the remote chance that this gets fixed someday.</span></div><div class='line' id='LC301'><br/></div><div class='line' id='LC302'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="nb">String</span><span class="p">(</span><span class="nx">value</span><span class="p">);</span></div><div class='line' id='LC303'><br/></div><div class='line' id='LC304'><span class="c1">// If the type is &#39;object&#39;, we might be dealing with an object or an array or</span></div><div class='line' id='LC305'><span class="c1">// null.</span></div><div class='line' id='LC306'><br/></div><div class='line' id='LC307'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="s1">&#39;object&#39;</span><span class="o">:</span></div><div class='line' id='LC308'><br/></div><div class='line' id='LC309'><span class="c1">// Due to a specification blunder in ECMAScript, typeof null is &#39;object&#39;,</span></div><div class='line' id='LC310'><span class="c1">// so watch out for that case.</span></div><div class='line' id='LC311'><br/></div><div class='line' id='LC312'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="o">!</span><span class="nx">value</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC313'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="s1">&#39;null&#39;</span><span class="p">;</span></div><div class='line' id='LC314'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC315'><br/></div><div class='line' id='LC316'><span class="c1">// Make an array to hold the partial results of stringifying this object value.</span></div><div class='line' id='LC317'><br/></div><div class='line' id='LC318'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">gap</span> <span class="o">+=</span> <span class="nx">indent</span><span class="p">;</span></div><div class='line' id='LC319'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">partial</span> <span class="o">=</span> <span class="p">[];</span></div><div class='line' id='LC320'><br/></div><div class='line' id='LC321'><span class="c1">// Is the value an array?</span></div><div class='line' id='LC322'><br/></div><div class='line' id='LC323'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="nb">Object</span><span class="p">.</span><span class="nx">prototype</span><span class="p">.</span><span class="nx">toString</span><span class="p">.</span><span class="nx">apply</span><span class="p">(</span><span class="nx">value</span><span class="p">)</span> <span class="o">===</span> <span class="s1">&#39;[object Array]&#39;</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC324'><br/></div><div class='line' id='LC325'><span class="c1">// The value is an array. Stringify every element. Use null as a placeholder</span></div><div class='line' id='LC326'><span class="c1">// for non-JSON values.</span></div><div class='line' id='LC327'><br/></div><div class='line' id='LC328'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">length</span> <span class="o">=</span> <span class="nx">value</span><span class="p">.</span><span class="nx">length</span><span class="p">;</span></div><div class='line' id='LC329'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">for</span> <span class="p">(</span><span class="nx">i</span> <span class="o">=</span> <span class="mi">0</span><span class="p">;</span> <span class="nx">i</span> <span class="o">&lt;</span> <span class="nx">length</span><span class="p">;</span> <span class="nx">i</span> <span class="o">+=</span> <span class="mi">1</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC330'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">partial</span><span class="p">[</span><span class="nx">i</span><span class="p">]</span> <span class="o">=</span> <span class="nx">str</span><span class="p">(</span><span class="nx">i</span><span class="p">,</span> <span class="nx">value</span><span class="p">)</span> <span class="o">||</span> <span class="s1">&#39;null&#39;</span><span class="p">;</span></div><div class='line' id='LC331'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC332'><br/></div><div class='line' id='LC333'><span class="c1">// Join all of the elements together, separated with commas, and wrap them in</span></div><div class='line' id='LC334'><span class="c1">// brackets.</span></div><div class='line' id='LC335'><br/></div><div class='line' id='LC336'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">v</span> <span class="o">=</span> <span class="nx">partial</span><span class="p">.</span><span class="nx">length</span> <span class="o">===</span> <span class="mi">0</span></div><div class='line' id='LC337'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">?</span> <span class="s1">&#39;[]&#39;</span></div><div class='line' id='LC338'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">:</span> <span class="nx">gap</span></div><div class='line' id='LC339'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">?</span> <span class="s1">&#39;[\n&#39;</span> <span class="o">+</span> <span class="nx">gap</span> <span class="o">+</span> <span class="nx">partial</span><span class="p">.</span><span class="nx">join</span><span class="p">(</span><span class="s1">&#39;,\n&#39;</span> <span class="o">+</span> <span class="nx">gap</span><span class="p">)</span> <span class="o">+</span> <span class="s1">&#39;\n&#39;</span> <span class="o">+</span> <span class="nx">mind</span> <span class="o">+</span> <span class="s1">&#39;]&#39;</span></div><div class='line' id='LC340'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">:</span> <span class="s1">&#39;[&#39;</span> <span class="o">+</span> <span class="nx">partial</span><span class="p">.</span><span class="nx">join</span><span class="p">(</span><span class="s1">&#39;,&#39;</span><span class="p">)</span> <span class="o">+</span> <span class="s1">&#39;]&#39;</span><span class="p">;</span></div><div class='line' id='LC341'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">gap</span> <span class="o">=</span> <span class="nx">mind</span><span class="p">;</span></div><div class='line' id='LC342'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="nx">v</span><span class="p">;</span></div><div class='line' id='LC343'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC344'><br/></div><div class='line' id='LC345'><span class="c1">// If the replacer is an array, use it to select the members to be stringified.</span></div><div class='line' id='LC346'><br/></div><div class='line' id='LC347'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="nx">rep</span> <span class="o">&amp;&amp;</span> <span class="k">typeof</span> <span class="nx">rep</span> <span class="o">===</span> <span class="s1">&#39;object&#39;</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC348'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">length</span> <span class="o">=</span> <span class="nx">rep</span><span class="p">.</span><span class="nx">length</span><span class="p">;</span></div><div class='line' id='LC349'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">for</span> <span class="p">(</span><span class="nx">i</span> <span class="o">=</span> <span class="mi">0</span><span class="p">;</span> <span class="nx">i</span> <span class="o">&lt;</span> <span class="nx">length</span><span class="p">;</span> <span class="nx">i</span> <span class="o">+=</span> <span class="mi">1</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC350'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">k</span> <span class="o">=</span> <span class="nx">rep</span><span class="p">[</span><span class="nx">i</span><span class="p">];</span></div><div class='line' id='LC351'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="k">typeof</span> <span class="nx">k</span> <span class="o">===</span> <span class="s1">&#39;string&#39;</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC352'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">v</span> <span class="o">=</span> <span class="nx">str</span><span class="p">(</span><span class="nx">k</span><span class="p">,</span> <span class="nx">value</span><span class="p">);</span></div><div class='line' id='LC353'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="nx">v</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC354'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">partial</span><span class="p">.</span><span class="nx">push</span><span class="p">(</span><span class="nx">quote</span><span class="p">(</span><span class="nx">k</span><span class="p">)</span> <span class="o">+</span> <span class="p">(</span><span class="nx">gap</span> <span class="o">?</span> <span class="s1">&#39;: &#39;</span> <span class="o">:</span> <span class="s1">&#39;:&#39;</span><span class="p">)</span> <span class="o">+</span> <span class="nx">v</span><span class="p">);</span></div><div class='line' id='LC355'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC356'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC357'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC358'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="k">else</span> <span class="p">{</span></div><div class='line' id='LC359'><br/></div><div class='line' id='LC360'><span class="c1">// Otherwise, iterate through all of the keys in the object.</span></div><div class='line' id='LC361'><br/></div><div class='line' id='LC362'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">for</span> <span class="p">(</span><span class="nx">k</span> <span class="k">in</span> <span class="nx">value</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC363'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="nb">Object</span><span class="p">.</span><span class="nx">prototype</span><span class="p">.</span><span class="nx">hasOwnProperty</span><span class="p">.</span><span class="nx">call</span><span class="p">(</span><span class="nx">value</span><span class="p">,</span> <span class="nx">k</span><span class="p">))</span> <span class="p">{</span></div><div class='line' id='LC364'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">v</span> <span class="o">=</span> <span class="nx">str</span><span class="p">(</span><span class="nx">k</span><span class="p">,</span> <span class="nx">value</span><span class="p">);</span></div><div class='line' id='LC365'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="nx">v</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC366'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">partial</span><span class="p">.</span><span class="nx">push</span><span class="p">(</span><span class="nx">quote</span><span class="p">(</span><span class="nx">k</span><span class="p">)</span> <span class="o">+</span> <span class="p">(</span><span class="nx">gap</span> <span class="o">?</span> <span class="s1">&#39;: &#39;</span> <span class="o">:</span> <span class="s1">&#39;:&#39;</span><span class="p">)</span> <span class="o">+</span> <span class="nx">v</span><span class="p">);</span></div><div class='line' id='LC367'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC368'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC369'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC370'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC371'><br/></div><div class='line' id='LC372'><span class="c1">// Join all of the member texts together, separated with commas,</span></div><div class='line' id='LC373'><span class="c1">// and wrap them in braces.</span></div><div class='line' id='LC374'><br/></div><div class='line' id='LC375'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">v</span> <span class="o">=</span> <span class="nx">partial</span><span class="p">.</span><span class="nx">length</span> <span class="o">===</span> <span class="mi">0</span> <span class="o">?</span> <span class="s1">&#39;{}&#39;</span></div><div class='line' id='LC376'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">:</span> <span class="nx">gap</span></div><div class='line' id='LC377'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">?</span> <span class="s1">&#39;{\n&#39;</span> <span class="o">+</span> <span class="nx">gap</span> <span class="o">+</span> <span class="nx">partial</span><span class="p">.</span><span class="nx">join</span><span class="p">(</span><span class="s1">&#39;,\n&#39;</span> <span class="o">+</span> <span class="nx">gap</span><span class="p">)</span> <span class="o">+</span> <span class="s1">&#39;\n&#39;</span> <span class="o">+</span> <span class="nx">mind</span> <span class="o">+</span> <span class="s1">&#39;}&#39;</span></div><div class='line' id='LC378'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">:</span> <span class="s1">&#39;{&#39;</span> <span class="o">+</span> <span class="nx">partial</span><span class="p">.</span><span class="nx">join</span><span class="p">(</span><span class="s1">&#39;,&#39;</span><span class="p">)</span> <span class="o">+</span> <span class="s1">&#39;}&#39;</span><span class="p">;</span></div><div class='line' id='LC379'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">gap</span> <span class="o">=</span> <span class="nx">mind</span><span class="p">;</span></div><div class='line' id='LC380'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="nx">v</span><span class="p">;</span></div><div class='line' id='LC381'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC382'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC383'><br/></div><div class='line' id='LC384'><span class="c1">// If the JSON object does not yet have a stringify method, give it one.</span></div><div class='line' id='LC385'><br/></div><div class='line' id='LC386'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="k">typeof</span> <span class="nx">JSON</span><span class="p">.</span><span class="nx">stringify</span> <span class="o">!==</span> <span class="s1">&#39;function&#39;</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC387'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">escapable</span> <span class="o">=</span> <span class="sr">/[\\\&quot;\x00-\x1f\x7f-\x9f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g</span><span class="p">;</span></div><div class='line' id='LC388'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">meta</span> <span class="o">=</span> <span class="p">{</span>    <span class="c1">// table of character substitutions</span></div><div class='line' id='LC389'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s1">&#39;\b&#39;</span><span class="o">:</span> <span class="s1">&#39;\\b&#39;</span><span class="p">,</span></div><div class='line' id='LC390'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s1">&#39;\t&#39;</span><span class="o">:</span> <span class="s1">&#39;\\t&#39;</span><span class="p">,</span></div><div class='line' id='LC391'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s1">&#39;\n&#39;</span><span class="o">:</span> <span class="s1">&#39;\\n&#39;</span><span class="p">,</span></div><div class='line' id='LC392'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s1">&#39;\f&#39;</span><span class="o">:</span> <span class="s1">&#39;\\f&#39;</span><span class="p">,</span></div><div class='line' id='LC393'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s1">&#39;\r&#39;</span><span class="o">:</span> <span class="s1">&#39;\\r&#39;</span><span class="p">,</span></div><div class='line' id='LC394'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s1">&#39;&quot;&#39;</span> <span class="o">:</span> <span class="s1">&#39;\\&quot;&#39;</span><span class="p">,</span></div><div class='line' id='LC395'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s1">&#39;\\&#39;</span><span class="o">:</span> <span class="s1">&#39;\\\\&#39;</span></div><div class='line' id='LC396'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">};</span></div><div class='line' id='LC397'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">JSON</span><span class="p">.</span><span class="nx">stringify</span> <span class="o">=</span> <span class="kd">function</span> <span class="p">(</span><span class="nx">value</span><span class="p">,</span> <span class="nx">replacer</span><span class="p">,</span> <span class="nx">space</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC398'><br/></div><div class='line' id='LC399'><span class="c1">// The stringify method takes a value and an optional replacer, and an optional</span></div><div class='line' id='LC400'><span class="c1">// space parameter, and returns a JSON text. The replacer can be a function</span></div><div class='line' id='LC401'><span class="c1">// that can replace values, or an array of strings that will select the keys.</span></div><div class='line' id='LC402'><span class="c1">// A default replacer method can be provided. Use of the space parameter can</span></div><div class='line' id='LC403'><span class="c1">// produce text that is more easily readable.</span></div><div class='line' id='LC404'><br/></div><div class='line' id='LC405'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">var</span> <span class="nx">i</span><span class="p">;</span></div><div class='line' id='LC406'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">gap</span> <span class="o">=</span> <span class="s1">&#39;&#39;</span><span class="p">;</span></div><div class='line' id='LC407'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">indent</span> <span class="o">=</span> <span class="s1">&#39;&#39;</span><span class="p">;</span></div><div class='line' id='LC408'><br/></div><div class='line' id='LC409'><span class="c1">// If the space parameter is a number, make an indent string containing that</span></div><div class='line' id='LC410'><span class="c1">// many spaces.</span></div><div class='line' id='LC411'><br/></div><div class='line' id='LC412'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="k">typeof</span> <span class="nx">space</span> <span class="o">===</span> <span class="s1">&#39;number&#39;</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC413'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">for</span> <span class="p">(</span><span class="nx">i</span> <span class="o">=</span> <span class="mi">0</span><span class="p">;</span> <span class="nx">i</span> <span class="o">&lt;</span> <span class="nx">space</span><span class="p">;</span> <span class="nx">i</span> <span class="o">+=</span> <span class="mi">1</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC414'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">indent</span> <span class="o">+=</span> <span class="s1">&#39; &#39;</span><span class="p">;</span></div><div class='line' id='LC415'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC416'><br/></div><div class='line' id='LC417'><span class="c1">// If the space parameter is a string, it will be used as the indent string.</span></div><div class='line' id='LC418'><br/></div><div class='line' id='LC419'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="k">else</span> <span class="k">if</span> <span class="p">(</span><span class="k">typeof</span> <span class="nx">space</span> <span class="o">===</span> <span class="s1">&#39;string&#39;</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC420'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">indent</span> <span class="o">=</span> <span class="nx">space</span><span class="p">;</span></div><div class='line' id='LC421'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC422'><br/></div><div class='line' id='LC423'><span class="c1">// If there is a replacer, it must be a function or an array.</span></div><div class='line' id='LC424'><span class="c1">// Otherwise, throw an error.</span></div><div class='line' id='LC425'><br/></div><div class='line' id='LC426'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">rep</span> <span class="o">=</span> <span class="nx">replacer</span><span class="p">;</span></div><div class='line' id='LC427'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="nx">replacer</span> <span class="o">&amp;&amp;</span> <span class="k">typeof</span> <span class="nx">replacer</span> <span class="o">!==</span> <span class="s1">&#39;function&#39;</span> <span class="o">&amp;&amp;</span></div><div class='line' id='LC428'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">typeof</span> <span class="nx">replacer</span> <span class="o">!==</span> <span class="s1">&#39;object&#39;</span> <span class="o">||</span></div><div class='line' id='LC429'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">typeof</span> <span class="nx">replacer</span><span class="p">.</span><span class="nx">length</span> <span class="o">!==</span> <span class="s1">&#39;number&#39;</span><span class="p">))</span> <span class="p">{</span></div><div class='line' id='LC430'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">throw</span> <span class="k">new</span> <span class="nb">Error</span><span class="p">(</span><span class="s1">&#39;JSON.stringify&#39;</span><span class="p">);</span></div><div class='line' id='LC431'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC432'><br/></div><div class='line' id='LC433'><span class="c1">// Make a fake root object containing our value under the key of &#39;&#39;.</span></div><div class='line' id='LC434'><span class="c1">// Return the result of stringifying the value.</span></div><div class='line' id='LC435'><br/></div><div class='line' id='LC436'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="nx">str</span><span class="p">(</span><span class="s1">&#39;&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s1">&#39;&#39;</span><span class="o">:</span> <span class="nx">value</span><span class="p">});</span></div><div class='line' id='LC437'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">};</span></div><div class='line' id='LC438'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC439'><br/></div><div class='line' id='LC440'><br/></div><div class='line' id='LC441'><span class="c1">// If the JSON object does not yet have a parse method, give it one.</span></div><div class='line' id='LC442'><br/></div><div class='line' id='LC443'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="k">typeof</span> <span class="nx">JSON</span><span class="p">.</span><span class="nx">parse</span> <span class="o">!==</span> <span class="s1">&#39;function&#39;</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC444'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">cx</span> <span class="o">=</span> <span class="sr">/[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g</span><span class="p">;</span></div><div class='line' id='LC445'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">JSON</span><span class="p">.</span><span class="nx">parse</span> <span class="o">=</span> <span class="kd">function</span> <span class="p">(</span><span class="nx">text</span><span class="p">,</span> <span class="nx">reviver</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC446'><br/></div><div class='line' id='LC447'><span class="c1">// The parse method takes a text and an optional reviver function, and returns</span></div><div class='line' id='LC448'><span class="c1">// a JavaScript value if the text is a valid JSON text.</span></div><div class='line' id='LC449'><br/></div><div class='line' id='LC450'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">var</span> <span class="nx">j</span><span class="p">;</span></div><div class='line' id='LC451'><br/></div><div class='line' id='LC452'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">function</span> <span class="nx">walk</span><span class="p">(</span><span class="nx">holder</span><span class="p">,</span> <span class="nx">key</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC453'><br/></div><div class='line' id='LC454'><span class="c1">// The walk method is used to recursively walk the resulting structure so</span></div><div class='line' id='LC455'><span class="c1">// that modifications can be made.</span></div><div class='line' id='LC456'><br/></div><div class='line' id='LC457'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">var</span> <span class="nx">k</span><span class="p">,</span> <span class="nx">v</span><span class="p">,</span> <span class="nx">value</span> <span class="o">=</span> <span class="nx">holder</span><span class="p">[</span><span class="nx">key</span><span class="p">];</span></div><div class='line' id='LC458'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="nx">value</span> <span class="o">&amp;&amp;</span> <span class="k">typeof</span> <span class="nx">value</span> <span class="o">===</span> <span class="s1">&#39;object&#39;</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC459'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">for</span> <span class="p">(</span><span class="nx">k</span> <span class="k">in</span> <span class="nx">value</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC460'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="nb">Object</span><span class="p">.</span><span class="nx">prototype</span><span class="p">.</span><span class="nx">hasOwnProperty</span><span class="p">.</span><span class="nx">call</span><span class="p">(</span><span class="nx">value</span><span class="p">,</span> <span class="nx">k</span><span class="p">))</span> <span class="p">{</span></div><div class='line' id='LC461'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">v</span> <span class="o">=</span> <span class="nx">walk</span><span class="p">(</span><span class="nx">value</span><span class="p">,</span> <span class="nx">k</span><span class="p">);</span></div><div class='line' id='LC462'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="nx">v</span> <span class="o">!==</span> <span class="kc">undefined</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC463'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">value</span><span class="p">[</span><span class="nx">k</span><span class="p">]</span> <span class="o">=</span> <span class="nx">v</span><span class="p">;</span></div><div class='line' id='LC464'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="k">else</span> <span class="p">{</span></div><div class='line' id='LC465'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">delete</span> <span class="nx">value</span><span class="p">[</span><span class="nx">k</span><span class="p">];</span></div><div class='line' id='LC466'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC467'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC468'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC469'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC470'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="nx">reviver</span><span class="p">.</span><span class="nx">call</span><span class="p">(</span><span class="nx">holder</span><span class="p">,</span> <span class="nx">key</span><span class="p">,</span> <span class="nx">value</span><span class="p">);</span></div><div class='line' id='LC471'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC472'><br/></div><div class='line' id='LC473'><br/></div><div class='line' id='LC474'><span class="c1">// Parsing happens in four stages. In the first stage, we replace certain</span></div><div class='line' id='LC475'><span class="c1">// Unicode characters with escape sequences. JavaScript handles many characters</span></div><div class='line' id='LC476'><span class="c1">// incorrectly, either silently deleting them, or treating them as line endings.</span></div><div class='line' id='LC477'><br/></div><div class='line' id='LC478'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">text</span> <span class="o">=</span> <span class="nb">String</span><span class="p">(</span><span class="nx">text</span><span class="p">);</span></div><div class='line' id='LC479'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">cx</span><span class="p">.</span><span class="nx">lastIndex</span> <span class="o">=</span> <span class="mi">0</span><span class="p">;</span></div><div class='line' id='LC480'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="nx">cx</span><span class="p">.</span><span class="nx">test</span><span class="p">(</span><span class="nx">text</span><span class="p">))</span> <span class="p">{</span></div><div class='line' id='LC481'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">text</span> <span class="o">=</span> <span class="nx">text</span><span class="p">.</span><span class="nx">replace</span><span class="p">(</span><span class="nx">cx</span><span class="p">,</span> <span class="kd">function</span> <span class="p">(</span><span class="nx">a</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC482'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="s1">&#39;\\u&#39;</span> <span class="o">+</span></div><div class='line' id='LC483'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s1">&#39;0000&#39;</span> <span class="o">+</span> <span class="nx">a</span><span class="p">.</span><span class="nx">charCodeAt</span><span class="p">(</span><span class="mi">0</span><span class="p">).</span><span class="nx">toString</span><span class="p">(</span><span class="mi">16</span><span class="p">)).</span><span class="nx">slice</span><span class="p">(</span><span class="o">-</span><span class="mi">4</span><span class="p">);</span></div><div class='line' id='LC484'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">});</span></div><div class='line' id='LC485'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC486'><br/></div><div class='line' id='LC487'><span class="c1">// In the second stage, we run the text against regular expressions that look</span></div><div class='line' id='LC488'><span class="c1">// for non-JSON patterns. We are especially concerned with &#39;()&#39; and &#39;new&#39;</span></div><div class='line' id='LC489'><span class="c1">// because they can cause invocation, and &#39;=&#39; because it can cause mutation.</span></div><div class='line' id='LC490'><span class="c1">// But just to be safe, we want to reject all unexpected forms.</span></div><div class='line' id='LC491'><br/></div><div class='line' id='LC492'><span class="c1">// We split the second stage into 4 regexp operations in order to work around</span></div><div class='line' id='LC493'><span class="c1">// crippling inefficiencies in IE&#39;s and Safari&#39;s regexp engines. First we</span></div><div class='line' id='LC494'><span class="c1">// replace the JSON backslash pairs with &#39;@&#39; (a non-JSON character). Second, we</span></div><div class='line' id='LC495'><span class="c1">// replace all simple value tokens with &#39;]&#39; characters. Third, we delete all</span></div><div class='line' id='LC496'><span class="c1">// open brackets that follow a colon or comma or that begin the text. Finally,</span></div><div class='line' id='LC497'><span class="c1">// we look to see that the remaining characters are only whitespace or &#39;]&#39; or</span></div><div class='line' id='LC498'><span class="c1">// &#39;,&#39; or &#39;:&#39; or &#39;{&#39; or &#39;}&#39;. If that is so, then the text is safe for eval.</span></div><div class='line' id='LC499'><br/></div><div class='line' id='LC500'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="sr">/^[\],:{}\s]*$/</span></div><div class='line' id='LC501'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">.</span><span class="nx">test</span><span class="p">(</span><span class="nx">text</span><span class="p">.</span><span class="nx">replace</span><span class="p">(</span><span class="sr">/\\(?:[&quot;\\\/bfnrt]|u[0-9a-fA-F]{4})/g</span><span class="p">,</span> <span class="s1">&#39;@&#39;</span><span class="p">)</span></div><div class='line' id='LC502'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">.</span><span class="nx">replace</span><span class="p">(</span><span class="sr">/&quot;[^&quot;\\\n\r]*&quot;|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g</span><span class="p">,</span> <span class="s1">&#39;]&#39;</span><span class="p">)</span></div><div class='line' id='LC503'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">.</span><span class="nx">replace</span><span class="p">(</span><span class="sr">/(?:^|:|,)(?:\s*\[)+/g</span><span class="p">,</span> <span class="s1">&#39;&#39;</span><span class="p">)))</span> <span class="p">{</span></div><div class='line' id='LC504'><br/></div><div class='line' id='LC505'><span class="c1">// In the third stage we use the eval function to compile the text into a</span></div><div class='line' id='LC506'><span class="c1">// JavaScript structure. The &#39;{&#39; operator is subject to a syntactic ambiguity</span></div><div class='line' id='LC507'><span class="c1">// in JavaScript: it can begin a block or an object literal. We wrap the text</span></div><div class='line' id='LC508'><span class="c1">// in parens to eliminate the ambiguity.</span></div><div class='line' id='LC509'><br/></div><div class='line' id='LC510'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">j</span> <span class="o">=</span> <span class="nb">eval</span><span class="p">(</span><span class="s1">&#39;(&#39;</span> <span class="o">+</span> <span class="nx">text</span> <span class="o">+</span> <span class="s1">&#39;)&#39;</span><span class="p">);</span></div><div class='line' id='LC511'><br/></div><div class='line' id='LC512'><span class="c1">// In the optional fourth stage, we recursively walk the new structure, passing</span></div><div class='line' id='LC513'><span class="c1">// each name/value pair to a reviver function for possible transformation.</span></div><div class='line' id='LC514'><br/></div><div class='line' id='LC515'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="k">typeof</span> <span class="nx">reviver</span> <span class="o">===</span> <span class="s1">&#39;function&#39;</span></div><div class='line' id='LC516'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">?</span> <span class="nx">walk</span><span class="p">({</span><span class="s1">&#39;&#39;</span><span class="o">:</span> <span class="nx">j</span><span class="p">},</span> <span class="s1">&#39;&#39;</span><span class="p">)</span></div><div class='line' id='LC517'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">:</span> <span class="nx">j</span><span class="p">;</span></div><div class='line' id='LC518'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC519'><br/></div><div class='line' id='LC520'><span class="c1">// If the text is not JSON parseable, then a SyntaxError is thrown.</span></div><div class='line' id='LC521'><br/></div><div class='line' id='LC522'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">throw</span> <span class="k">new</span> <span class="nx">SyntaxError</span><span class="p">(</span><span class="s1">&#39;JSON.parse&#39;</span><span class="p">);</span></div><div class='line' id='LC523'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">};</span></div><div class='line' id='LC524'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC525'><br/></div><div class='line' id='LC526'><span class="c1">// Augment the basic prototypes if they have not already been augmented.</span></div><div class='line' id='LC527'><span class="c1">// These forms are obsolete. It is recommended that JSON.stringify and</span></div><div class='line' id='LC528'><span class="c1">// JSON.parse be used instead.</span></div><div class='line' id='LC529'><br/></div><div class='line' id='LC530'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="o">!</span><span class="nb">Object</span><span class="p">.</span><span class="nx">prototype</span><span class="p">.</span><span class="nx">toJSONString</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC531'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">Object</span><span class="p">.</span><span class="nx">prototype</span><span class="p">.</span><span class="nx">toJSONString</span> <span class="o">=</span> <span class="kd">function</span> <span class="p">(</span><span class="nx">filter</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC532'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="nx">JSON</span><span class="p">.</span><span class="nx">stringify</span><span class="p">(</span><span class="k">this</span><span class="p">,</span> <span class="nx">filter</span><span class="p">);</span></div><div class='line' id='LC533'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">};</span></div><div class='line' id='LC534'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">Object</span><span class="p">.</span><span class="nx">prototype</span><span class="p">.</span><span class="nx">parseJSON</span> <span class="o">=</span> <span class="kd">function</span> <span class="p">(</span><span class="nx">filter</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC535'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="nx">JSON</span><span class="p">.</span><span class="nx">parse</span><span class="p">(</span><span class="k">this</span><span class="p">,</span> <span class="nx">filter</span><span class="p">);</span></div><div class='line' id='LC536'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">};</span></div><div class='line' id='LC537'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC538'><span class="p">}());</span></div></pre></div></td>
         </tr>
       </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.03201s from github-fe118-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents js-suggester-field" placeholder=""></textarea>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-8c6e10f6700610e693b29e274318b3714523ca3e.js" type="text/javascript"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-8cb2cf90ade4ed9e5f018ba0309e9b3d0bf0c6db.js" type="text/javascript"></script>
      
      
        <script async src="https://www.google-analytics.com/analytics.js"></script>
  </body>
</html>

