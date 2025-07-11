.class Lcom/twitter/sdk/android/tweetcomposer/ComposerScribeClientImpl;
.super Ljava/lang/Object;
.source "ComposerScribeClientImpl.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetcomposer/ComposerScribeClient;


# instance fields
.field private final scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerScribeClientImpl;->scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "scribeClient must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public click(Ljava/lang/String;)V
    .locals 2

    .line 49
    sget-object v0, Lcom/twitter/sdk/android/tweetcomposer/ScribeConstants;->ComposerEventBuilder:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    const-string v1, ""

    .line 50
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setComponent(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setElement(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object p1

    const-string v0, "click"

    .line 52
    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setAction(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->builder()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerScribeClientImpl;->scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    return-void
.end method

.method public impression()V
    .locals 3

    .line 39
    sget-object v0, Lcom/twitter/sdk/android/tweetcomposer/ScribeConstants;->ComposerEventBuilder:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    const-string v1, ""

    .line 40
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setComponent(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setElement(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "impression"

    .line 42
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setAction(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->builder()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerScribeClientImpl;->scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    return-void
.end method
