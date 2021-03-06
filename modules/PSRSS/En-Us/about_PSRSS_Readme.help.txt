
NAME
    Read-Article
    
SYNOPSIS
    Marks articles as read.
    
    
SYNTAX
    Read-Article [-Article <__ComObject>] [<CommonParameters>]
    
    
DESCRIPTION
    The Read-Article function marks articles as having been read.
    You can submit articles or feeds to Read-Article.
    If you submit a feed, Read-Article marks all articles in the feed as read.
    

RELATED LINKS
    about_PSRSS_Module 
    Get-Article 
    Get-Feed 
    "Windows RSS Platform" in MSDN
    http://msdn.microsoft.com/en-us/library/ms684701(VS.85).aspx 
    "Microsoft.FeedsManager Object" in MSDN
    http://msdn.microsoft.com/en-us/library/ms684749(VS.85).aspx 

REMARKS
    To see the examples, type: "get-help Read-Article -examples".
    For more information, type: "get-help Read-Article -detailed".
    For technical information, type: "get-help Read-Article -full".

NAME
    New-Feed
    
SYNOPSIS
    Subscribes to an RSS feed.
    
    
SYNTAX
    New-Feed [-Name] <String> [-Url] <Uri> [-DoNotDownload] [<CommonParameters>]
    
    
DESCRIPTION
    The New-Feed function creates a new subscription to an RSS feed.
    By default, it downloads the articles in the feed, but you can use the DoNotDownload parameter
     to prevent the download. The new feed appears immediately in your Web browser.
    

RELATED LINKS
    about_PSRSS_Module 
    Remove-Feed 
    "Windows RSS Platform" in MSDN
    http://msdn.microsoft.com/en-us/library/ms684701(VS.85).aspx 
    "Microsoft.FeedsManager Object" in MSDN
    http://msdn.microsoft.com/en-us/library/ms684749(VS.85).aspx 

REMARKS
    To see the examples, type: "get-help New-Feed -examples".
    For more information, type: "get-help New-Feed -detailed".
    For technical information, type: "get-help New-Feed -full".

NAME
    Remove-Article
    
SYNOPSIS
    Deletes RSS articles
    
    
SYNTAX
    Remove-Article [[-Article] <__ComObject>] [-Force] [<CommonParameters>]
    
    
DESCRIPTION
    Removes articles from the RSS store
    

RELATED LINKS
    Get-Article 
    Get-Feed 
    Remove-Feed 
    "Windows RSS Platform" in MSDN
    http://msdn.microsoft.com/en-us/library/ms684701(VS.85).aspx 
    "Microsoft.FeedsManager Object" in MSDN
    http://msdn.microsoft.com/en-us/library/ms684749(VS.85).aspx 

REMARKS
    To see the examples, type: "get-help Remove-Article -examples".
    For more information, type: "get-help Remove-Article -detailed".
    For technical information, type: "get-help Remove-Article -full".

NAME
    Remove-Feed
    
SYNOPSIS
    Deletes an RSS feed.
    
    
SYNTAX
    Remove-Feed [-Feed <__ComObject>] [-Force] [<CommonParameters>]
    
    Remove-Feed [-Feed <__ComObject>] [-Name] <String[]> [-Force] [<CommonParameters>]
    
    
DESCRIPTION
    The Remove-Feed function deletes an RSS feed and its articles and unsubscribes from the feed.
    By default, Remove-Feed prompts you for confirmation before it deletes each RSS feed.
    

RELATED LINKS
    about_PSRSS_Module 
    Get-Feed 
    "Windows RSS Platform" in MSDN
    http://msdn.microsoft.com/en-us/library/ms684701(VS.85).aspx 
    "Microsoft.FeedsManager Object" in MSDN
    http://msdn.microsoft.com/en-us/library/ms684749(VS.85).aspx 

REMARKS
    To see the examples, type: "get-help Remove-Feed -examples".
    For more information, type: "get-help Remove-Feed -detailed".
    For technical information, type: "get-help Remove-Feed -full".

NAME
    Get-Article
    
SYNOPSIS
    Gets articles from an RSS feed.
    
    
SYNTAX
    Get-Article [[-Feed] <Object>] [<CommonParameters>]
    
    
DESCRIPTION
    The Get-Article function gets articles from RSS feeds.
    

RELATED LINKS
    about_PSRSS_Module 
    "Windows RSS Platform" in MSDN
    http://msdn.microsoft.com/en-us/library/ms684701(VS.85).aspx 
    "Microsoft.FeedsManager Object" in MSDN
    http://msdn.microsoft.com/en-us/library/ms684749(VS.85).aspx 

REMARKS
    To see the examples, type: "get-help Get-Article -examples".
    For more information, type: "get-help Get-Article -detailed".
    For technical information, type: "get-help Get-Article -full".

NAME
    Get-Feed
    
SYNOPSIS
    Gets RSS feeds.
    
    
SYNTAX
    Get-Feed [[-Feed] <Object>] [[-Folder] <Object>] [<CommonParameters>]
    
    
DESCRIPTION
    The Get-Feed function gets objects that represent the RSS feeds to which the system is subscribed. 
    
    The feed objects have useful properties, such LastDownloadTime, UnreadItemCount, Link (to the Web site) and Image (path to images), and methods, such as Delete, GetIte
    m, Move, and AsyncDownload. You can also pipe the object that Get-Feed returns to other functions, such as Remove-Feed.
    

RELATED LINKS
    about_PSRSS_Module 
    "Windows RSS Platform" in MSDN
    http://msdn.microsoft.com/en-us/library/ms684701(VS.85).aspx 
    "Microsoft.FeedsManager Object" in MSDN
    http://msdn.microsoft.com/en-us/library/ms684749(VS.85).aspx 
    "Windows RSS Platform" in MSDN
    http://msdn.microsoft.com/en-us/library/ms684701(VS.85).aspx 
    "Microsoft.FeedsManager Object" in MSDN
    http://msdn.microsoft.com/en-us/library/ms684749(VS.85).aspx 

REMARKS
    To see the examples, type: "get-help Get-Feed -examples".
    For more information, type: "get-help Get-Feed -detailed".
    For technical information, type: "get-help Get-Feed -full".




