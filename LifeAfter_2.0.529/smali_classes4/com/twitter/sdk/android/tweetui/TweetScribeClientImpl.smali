.class Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;
.super Ljava/lang/Object;
.source "TweetScribeClientImpl.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetui/TweetScribeClient;


# static fields
.field static final SCRIBE_ACTIONS_ELEMENT:Ljava/lang/String; = "actions"

.field static final SCRIBE_CLICK_ACTION:Ljava/lang/String; = "click"

.field static final SCRIBE_FAVORITE_ACTION:Ljava/lang/String; = "favorite"

.field static final SCRIBE_IMPRESSION_ACTION:Ljava/lang/String; = "impression"

.field static final SCRIBE_SHARE_ACTION:Ljava/lang/String; = "share"

.field static final SCRIBE_UNFAVORITE_ACTION:Ljava/lang/String; = "unfavorite"

.field static final SYNDICATED_SDK_IMPRESSION_COMPONENT:Ljava/lang/String; = ""

.field static final SYNDICATED_SDK_IMPRESSION_ELEMENT:Ljava/lang/String; = ""

.field static final SYNDICATED_SDK_IMPRESSION_PAGE:Ljava/lang/String; = "tweet"

.field static final TFW_CLIENT_EVENT_ELEMENT:Ljava/lang/String; = ""

.field static final TFW_CLIENT_EVENT_PAGE:Ljava/lang/String; = "android"

.field static final TFW_CLIENT_EVENT_SECTION:Ljava/lang/String; = "tweet"


# instance fields
.field final tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    return-void
.end method

.method static getSyndicatedImpressionNamespace(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    .locals 2

    .line 148
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;-><init>()V

    const-string v1, "android"

    .line 149
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setClient(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "tweet"

    .line 150
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setPage(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0, p0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setSection(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object p0

    const-string v0, ""

    .line 152
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setComponent(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object p0

    .line 153
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setElement(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object p0

    const-string v0, "impression"

    .line 154
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setAction(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object p0

    .line 155
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->builder()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object p0

    return-object p0
.end method

.method static getTfwClickNamespace(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    .locals 2

    .line 137
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;-><init>()V

    const-string v1, "tfw"

    .line 138
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setClient(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "android"

    .line 139
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setPage(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "tweet"

    .line 140
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setSection(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setComponent(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object p0

    const-string v0, ""

    .line 142
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setElement(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object p0

    const-string v0, "click"

    .line 143
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setAction(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->builder()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object p0

    return-object p0
.end method

.method static getTfwFavoriteNamespace()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    .locals 2

    .line 117
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;-><init>()V

    const-string v1, "tfw"

    .line 118
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setClient(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "android"

    .line 119
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setPage(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "tweet"

    .line 120
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setSection(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "actions"

    .line 121
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setElement(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "favorite"

    .line 122
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setAction(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->builder()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v0

    return-object v0
.end method

.method static getTfwImpressionNamespace(Ljava/lang/String;Z)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    .locals 2

    .line 96
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;-><init>()V

    const-string v1, "tfw"

    .line 97
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setClient(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "android"

    .line 98
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setPage(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "tweet"

    .line 99
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setSection(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setComponent(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "actions"

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 101
    :goto_0
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setElement(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object p0

    const-string p1, "impression"

    .line 102
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setAction(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->builder()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object p0

    return-object p0
.end method

.method static getTfwShareNamespace()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    .locals 2

    .line 127
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;-><init>()V

    const-string v1, "tfw"

    .line 128
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setClient(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "android"

    .line 129
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setPage(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "tweet"

    .line 130
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setSection(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "actions"

    .line 131
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setElement(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "share"

    .line 132
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setAction(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->builder()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v0

    return-object v0
.end method

.method static getTfwUnfavoriteNamespace()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    .locals 2

    .line 107
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;-><init>()V

    const-string v1, "tfw"

    .line 108
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setClient(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "android"

    .line 109
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setPage(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "tweet"

    .line 110
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setSection(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "actions"

    .line 111
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setElement(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "unfavorite"

    .line 112
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setAction(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->builder()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public click(Lcom/twitter/sdk/android/core/models/Tweet;Ljava/lang/String;)V
    .locals 1

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-static {p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->fromTweet(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-static {p2}, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;->getTfwClickNamespace(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    return-void
.end method

.method public favorite(Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 2

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-static {p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->fromTweet(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;->getTfwFavoriteNamespace()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    return-void
.end method

.method public impression(Lcom/twitter/sdk/android/core/models/Tweet;Ljava/lang/String;Z)V
    .locals 1

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->fromTweet(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-static {p2, p3}, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;->getTfwImpressionNamespace(Ljava/lang/String;Z)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object p3

    invoke-virtual {p1, p3, v0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    .line 60
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-static {p2}, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;->getSyndicatedImpressionNamespace(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    return-void
.end method

.method public share(Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 2

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->fromTweet(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;->getTfwShareNamespace()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    return-void
.end method

.method public unfavorite(Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 2

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-static {p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->fromTweet(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;->getTfwUnfavoriteNamespace()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    return-void
.end method
