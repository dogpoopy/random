.class Lcom/twitter/sdk/android/tweetui/VideoScribeClientImpl;
.super Ljava/lang/Object;
.source "VideoScribeClientImpl.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetui/VideoScribeClient;


# static fields
.field static final SCRIBE_IMPRESSION_ACTION:Ljava/lang/String; = "impression"

.field static final SCRIBE_PLAY_ACTION:Ljava/lang/String; = "play"

.field static final TFW_CLIENT_EVENT_PAGE:Ljava/lang/String; = "android"

.field static final TFW_CLIENT_EVENT_SECTION:Ljava/lang/String; = "video"


# instance fields
.field final tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/VideoScribeClientImpl;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    return-void
.end method

.method static getTfwImpressionNamespace()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    .locals 2

    .line 60
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;-><init>()V

    const-string v1, "tfw"

    .line 61
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setClient(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "android"

    .line 62
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setPage(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "video"

    .line 63
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setSection(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "impression"

    .line 64
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setAction(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->builder()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v0

    return-object v0
.end method

.method static getTfwPlayNamespace()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    .locals 2

    .line 69
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;-><init>()V

    const-string v1, "tfw"

    .line 70
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setClient(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "android"

    .line 71
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setPage(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "video"

    .line 72
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setSection(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "play"

    .line 73
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setAction(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->builder()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public impression(Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;)V
    .locals 2

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/VideoScribeClientImpl;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-static {}, Lcom/twitter/sdk/android/tweetui/VideoScribeClientImpl;->getTfwImpressionNamespace()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    return-void
.end method

.method public play(Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;)V
    .locals 2

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/VideoScribeClientImpl;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-static {}, Lcom/twitter/sdk/android/tweetui/VideoScribeClientImpl;->getTfwPlayNamespace()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    return-void
.end method
