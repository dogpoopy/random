.class Lcom/twitter/sdk/android/tweetui/LikeTweetAction;
.super Lcom/twitter/sdk/android/tweetui/BaseTweetAction;
.source "LikeTweetAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;
    }
.end annotation


# instance fields
.field final tweet:Lcom/twitter/sdk/android/core/models/Tweet;

.field final tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;

.field final tweetScribeClient:Lcom/twitter/sdk/android/tweetui/TweetScribeClient;

.field final tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/tweetui/TweetUi;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            "Lcom/twitter/sdk/android/tweetui/TweetUi;",
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;

    invoke-direct {v0, p2}, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;-><init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;-><init>(Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/tweetui/TweetUi;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/TweetScribeClient;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/tweetui/TweetUi;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/TweetScribeClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            "Lcom/twitter/sdk/android/tweetui/TweetUi;",
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;",
            "Lcom/twitter/sdk/android/tweetui/TweetScribeClient;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p3}, Lcom/twitter/sdk/android/tweetui/BaseTweetAction;-><init>(Lcom/twitter/sdk/android/core/Callback;)V

    .line 49
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 50
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    .line 51
    iput-object p4, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweetScribeClient:Lcom/twitter/sdk/android/tweetui/TweetScribeClient;

    .line 52
    invoke-virtual {p2}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getTweetRepository()Lcom/twitter/sdk/android/tweetui/TweetRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 57
    instance-of v0, p1, Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

    if-eqz v0, :cond_1

    .line 58
    check-cast p1, Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

    .line 59
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-boolean v0, v0, Lcom/twitter/sdk/android/core/models/Tweet;->favorited:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->scribeUnFavoriteAction()V

    .line 61
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-wide v1, v1, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    new-instance v3, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 62
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->getActionCallback()Lcom/twitter/sdk/android/core/Callback;

    move-result-object v5

    invoke-direct {v3, p1, v4, v5}, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;-><init>(Lcom/twitter/sdk/android/tweetui/ToggleImageButton;Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/core/Callback;)V

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/sdk/android/tweetui/TweetRepository;->unfavorite(JLcom/twitter/sdk/android/core/Callback;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->scribeFavoriteAction()V

    .line 65
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-wide v1, v1, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    new-instance v3, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 66
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->getActionCallback()Lcom/twitter/sdk/android/core/Callback;

    move-result-object v5

    invoke-direct {v3, p1, v4, v5}, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;-><init>(Lcom/twitter/sdk/android/tweetui/ToggleImageButton;Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/core/Callback;)V

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/sdk/android/tweetui/TweetRepository;->favorite(JLcom/twitter/sdk/android/core/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method scribeFavoriteAction()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweetScribeClient:Lcom/twitter/sdk/android/tweetui/TweetScribeClient;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetScribeClient;->favorite(Lcom/twitter/sdk/android/core/models/Tweet;)V

    return-void
.end method

.method scribeUnFavoriteAction()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweetScribeClient:Lcom/twitter/sdk/android/tweetui/TweetScribeClient;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetScribeClient;->unfavorite(Lcom/twitter/sdk/android/core/models/Tweet;)V

    return-void
.end method
