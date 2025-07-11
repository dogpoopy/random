.class public abstract Lcom/twitter/sdk/android/tweetui/BaseTweetView;
.super Lcom/twitter/sdk/android/tweetui/AbstractTweetView;
.source "BaseTweetView.java"


# instance fields
.field avatarMediaBg:Landroid/graphics/drawable/ColorDrawable;

.field avatarView:Landroid/widget/ImageView;

.field birdLogoResId:I

.field bottomSeparator:Landroid/view/View;

.field containerBgColor:I

.field quoteTweetHolder:Landroid/view/ViewGroup;

.field quoteTweetView:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

.field retweetIconResId:I

.field retweetedByView:Landroid/widget/TextView;

.field timestampView:Landroid/widget/TextView;

.field tweetActionBarView:Lcom/twitter/sdk/android/tweetui/TweetActionBarView;

.field twitterLogoView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 122
    new-instance v0, Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;)V

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->initXmlAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->applyStyles()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 1

    .line 70
    sget v0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->DEFAULT_STYLE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;I)V
    .locals 1

    .line 80
    new-instance v0, Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;ILcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;ILcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;)V

    .line 94
    invoke-direct {p0, p3}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->initAttributes(I)V

    .line 95
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->applyStyles()V

    .line 96
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->isTweetUiEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->initTweetActions()V

    .line 98
    invoke-virtual {p0, p2}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setTweet(Lcom/twitter/sdk/android/core/models/Tweet;)V

    return-void
.end method

.method private initAttributes(I)V
    .locals 2

    .line 134
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->styleResId:I

    .line 135
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/twitter/sdk/android/tweetui/R$styleable;->tw__TweetView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 138
    :try_start_0
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setStyleAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    throw v0
.end method

.method private initTweetActions()V
    .locals 4

    .line 269
    iget-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetActionsEnabled:Z

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setTweetActionsEnabled(Z)V

    .line 272
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetActionBarView:Lcom/twitter/sdk/android/tweetui/TweetActionBarView;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/ResetTweetCallback;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->dependencyProvider:Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;

    .line 273
    invoke-virtual {v2}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;->getTweetUi()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getTweetRepository()Lcom/twitter/sdk/android/tweetui/TweetRepository;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/twitter/sdk/android/tweetui/ResetTweetCallback;-><init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;Lcom/twitter/sdk/android/tweetui/TweetRepository;Lcom/twitter/sdk/android/core/Callback;)V

    .line 272
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->setOnActionCallback(Lcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method

.method private initXmlAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->tw__TweetView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 157
    :try_start_0
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setXmlDataAttributes(Landroid/content/res/TypedArray;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setStyleAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    throw p2
.end method

.method private loadTweet()V
    .locals 5

    .line 236
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getTweetId()J

    move-result-wide v0

    .line 238
    new-instance v2, Lcom/twitter/sdk/android/tweetui/BaseTweetView$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView$1;-><init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;J)V

    .line 250
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->dependencyProvider:Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;->getTweetUi()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getTweetRepository()Lcom/twitter/sdk/android/tweetui/TweetRepository;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getTweetId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Lcom/twitter/sdk/android/tweetui/TweetRepository;->loadTweet(JLcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method

.method private setStyleAttributes(Landroid/content/res/TypedArray;)V
    .locals 6

    .line 188
    sget v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->tw__TweetView_tw__container_bg_color:I

    .line 189
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$color;->tw__tweet_light_container_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 188
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->containerBgColor:I

    .line 190
    sget v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->tw__TweetView_tw__primary_text_color:I

    .line 191
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$color;->tw__tweet_light_primary_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 190
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->primaryTextColor:I

    .line 192
    sget v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->tw__TweetView_tw__action_color:I

    .line 194
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$color;->tw__tweet_action_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->actionColor:I

    .line 195
    sget v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->tw__TweetView_tw__action_highlight_color:I

    .line 197
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$color;->tw__tweet_action_light_highlight_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 195
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->actionHighlightColor:I

    .line 198
    sget v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->tw__TweetView_tw__tweet_actions_enabled:I

    const/4 v1, 0x0

    .line 199
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetActionsEnabled:Z

    .line 202
    iget p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->containerBgColor:I

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/ColorUtils;->isLightColor(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    sget v0, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__ic_tweet_photo_error_light:I

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->photoErrorResId:I

    .line 206
    sget v0, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__ic_logo_blue:I

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->birdLogoResId:I

    .line 207
    sget v0, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__ic_retweet_light:I

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->retweetIconResId:I

    goto :goto_0

    .line 209
    :cond_0
    sget v0, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__ic_tweet_photo_error_dark:I

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->photoErrorResId:I

    .line 210
    sget v0, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__ic_logo_white:I

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->birdLogoResId:I

    .line 211
    sget v0, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__ic_retweet_dark:I

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->retweetIconResId:I

    :goto_0
    if-eqz p1, :cond_1

    const-wide v0, 0x3fd999999999999aL    # 0.4

    goto :goto_1

    :cond_1
    const-wide v0, 0x3fd6666666666666L    # 0.35

    :goto_1
    const/4 v2, -0x1

    const/high16 v3, -0x1000000

    if-eqz p1, :cond_2

    const/4 v4, -0x1

    goto :goto_2

    :cond_2
    const/high16 v4, -0x1000000

    .line 217
    :goto_2
    iget v5, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->primaryTextColor:I

    .line 215
    invoke-static {v0, v1, v4, v5}, Lcom/twitter/sdk/android/tweetui/ColorUtils;->calculateOpacityTransform(DII)I

    move-result v0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->secondaryTextColor:I

    if-eqz p1, :cond_3

    const-wide v0, 0x3fb47ae147ae147bL    # 0.08

    goto :goto_3

    :cond_3
    const-wide v0, 0x3fbeb851eb851eb8L    # 0.12

    :goto_3
    if-eqz p1, :cond_4

    const/high16 v2, -0x1000000

    .line 224
    :cond_4
    iget p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->containerBgColor:I

    .line 222
    invoke-static {v0, v1, v2, p1}, Lcom/twitter/sdk/android/tweetui/ColorUtils;->calculateOpacityTransform(DII)I

    move-result p1

    iput p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->mediaBgColor:I

    .line 228
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->mediaBgColor:I

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->avatarMediaBg:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method

.method private setTimestamp(Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 375
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->createdAt:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->createdAt:Ljava/lang/String;

    .line 376
    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/TweetDateUtils;->isValidTimestamp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/Tweet;->createdAt:Ljava/lang/String;

    .line 378
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/TweetDateUtils;->apiTimeToLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 379
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 381
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 379
    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/sdk/android/tweetui/TweetDateUtils;->getRelativeTimeString(Landroid/content/res/Resources;JJ)Ljava/lang/String;

    move-result-object p1

    .line 382
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/TweetDateUtils;->dotPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 387
    :goto_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->timestampView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setXmlDataAttributes(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 170
    sget v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->tw__TweetView_tw__tweet_id:I

    .line 171
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    .line 170
    invoke-static {p1, v0, v1}, Lcom/twitter/sdk/android/tweetui/Utils;->numberOrDefault(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 177
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setPermalinkUri(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    new-instance p1, Lcom/twitter/sdk/android/core/models/TweetBuilder;

    invoke-direct {p1}, Lcom/twitter/sdk/android/core/models/TweetBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/twitter/sdk/android/core/models/TweetBuilder;->setId(J)Lcom/twitter/sdk/android/core/models/TweetBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/models/TweetBuilder;->build()Lcom/twitter/sdk/android/core/models/Tweet;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    return-void

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid tw__tweet_id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected applyStyles()V
    .locals 2

    .line 357
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->containerBgColor:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setBackgroundColor(I)V

    .line 358
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->fullNameView:Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->primaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->screenNameView:Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->secondaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->contentView:Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->primaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetMediaView:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->mediaBgColor:I

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setMediaBgColor(I)V

    .line 362
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetMediaView:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->photoErrorResId:I

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setPhotoErrorResId(I)V

    .line 363
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->avatarView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->avatarMediaBg:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 364
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->timestampView:Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->secondaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->twitterLogoView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->birdLogoResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->retweetedByView:Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->secondaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method findSubviews()V
    .locals 1

    .line 282
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->findSubviews()V

    .line 284
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__tweet_author_avatar:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->avatarView:Landroid/widget/ImageView;

    .line 285
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__tweet_timestamp:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->timestampView:Landroid/widget/TextView;

    .line 286
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__twitter_logo:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->twitterLogoView:Landroid/widget/ImageView;

    .line 287
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__tweet_retweeted_by:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->retweetedByView:Landroid/widget/TextView;

    .line 288
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__tweet_action_bar:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetActionBarView:Lcom/twitter/sdk/android/tweetui/TweetActionBarView;

    .line 289
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->quote_tweet_holder:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->quoteTweetHolder:Landroid/view/ViewGroup;

    .line 290
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->bottom_separator:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->bottomSeparator:Landroid/view/View;

    return-void
.end method

.method public bridge synthetic getTweet()Lcom/twitter/sdk/android/core/models/Tweet;
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->getTweet()Lcom/twitter/sdk/android/core/models/Tweet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTweetId()J
    .locals 2

    .line 46
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->getTweetId()J

    move-result-wide v0

    return-wide v0
.end method

.method linkifyProfilePhotoView(Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 417
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->avatarView:Landroid/widget/ImageView;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;

    invoke-direct {v1, p0, p1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;-><init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;Lcom/twitter/sdk/android/core/models/Tweet;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->avatarView:Landroid/widget/ImageView;

    new-instance v0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$3;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView$3;-><init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 258
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->onFinishInflate()V

    .line 260
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->isTweetUiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->initTweetActions()V

    .line 262
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->loadTweet()V

    return-void
.end method

.method render()V
    .locals 1

    .line 310
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->render()V

    .line 312
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/TweetUtils;->getDisplayTweet(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/models/Tweet;

    move-result-object v0

    .line 313
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setProfilePhotoView(Lcom/twitter/sdk/android/core/models/Tweet;)V

    .line 314
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->linkifyProfilePhotoView(Lcom/twitter/sdk/android/core/models/Tweet;)V

    .line 315
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setTimestamp(Lcom/twitter/sdk/android/core/models/Tweet;)V

    .line 316
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setTweetActions(Lcom/twitter/sdk/android/core/models/Tweet;)V

    .line 317
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->showRetweetedBy(Lcom/twitter/sdk/android/core/models/Tweet;)V

    .line 318
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setQuoteTweet(Lcom/twitter/sdk/android/core/models/Tweet;)V

    return-void
.end method

.method public setOnActionCallback(Lcom/twitter/sdk/android/core/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetActionBarView:Lcom/twitter/sdk/android/tweetui/TweetActionBarView;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/ResetTweetCallback;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->dependencyProvider:Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;

    .line 299
    invoke-virtual {v2}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;->getTweetUi()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getTweetRepository()Lcom/twitter/sdk/android/tweetui/TweetRepository;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/twitter/sdk/android/tweetui/ResetTweetCallback;-><init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;Lcom/twitter/sdk/android/tweetui/TweetRepository;Lcom/twitter/sdk/android/core/Callback;)V

    .line 298
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->setOnActionCallback(Lcom/twitter/sdk/android/core/Callback;)V

    .line 300
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetActionBarView:Lcom/twitter/sdk/android/tweetui/TweetActionBarView;

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->setTweet(Lcom/twitter/sdk/android/core/models/Tweet;)V

    return-void
.end method

.method setProfilePhotoView(Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->dependencyProvider:Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;->getImageLoader()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 402
    iget-object v1, p1, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    if-nez v1, :cond_1

    goto :goto_0

    .line 405
    :cond_1
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    sget-object v1, Lcom/twitter/sdk/android/core/internal/UserUtils$AvatarSize;->REASONABLY_SMALL:Lcom/twitter/sdk/android/core/internal/UserUtils$AvatarSize;

    invoke-static {p1, v1}, Lcom/twitter/sdk/android/core/internal/UserUtils;->getProfileImageUrlHttps(Lcom/twitter/sdk/android/core/models/User;Lcom/twitter/sdk/android/core/internal/UserUtils$AvatarSize;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 409
    :goto_1
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->avatarMediaBg:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->avatarView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method setQuoteTweet(Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 9

    const/4 v0, 0x0

    .line 322
    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->quoteTweetView:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    .line 323
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->quoteTweetHolder:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_0

    .line 324
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/TweetUtils;->showQuoteTweet(Lcom/twitter/sdk/android/core/models/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->quoteTweetView:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    .line 326
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->quoteTweetView:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    iget v3, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->primaryTextColor:I

    iget v4, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->secondaryTextColor:I

    iget v5, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->actionColor:I

    iget v6, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->actionHighlightColor:I

    iget v7, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->mediaBgColor:I

    iget v8, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->photoErrorResId:I

    invoke-virtual/range {v2 .. v8}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->setStyle(IIIIII)V

    .line 328
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->quoteTweetView:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/Tweet;->quotedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->setTweet(Lcom/twitter/sdk/android/core/models/Tweet;)V

    .line 329
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->quoteTweetView:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetLinkClickListener:Lcom/twitter/sdk/android/tweetui/TweetLinkClickListener;

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->setTweetLinkClickListener(Lcom/twitter/sdk/android/tweetui/TweetLinkClickListener;)V

    .line 330
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->quoteTweetView:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetMediaClickListener:Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->setTweetMediaClickListener(Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;)V

    .line 331
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->quoteTweetHolder:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 332
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->quoteTweetHolder:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->quoteTweetView:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->quoteTweetHolder:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic setTweet(Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->setTweet(Lcom/twitter/sdk/android/core/models/Tweet;)V

    return-void
.end method

.method setTweetActions(Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetActionBarView:Lcom/twitter/sdk/android/tweetui/TweetActionBarView;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->setTweet(Lcom/twitter/sdk/android/core/models/Tweet;)V

    return-void
.end method

.method public setTweetActionsEnabled(Z)V
    .locals 2

    .line 493
    iput-boolean p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetActionsEnabled:Z

    .line 494
    iget-boolean p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetActionsEnabled:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 495
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetActionBarView:Lcom/twitter/sdk/android/tweetui/TweetActionBarView;

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->setVisibility(I)V

    .line 496
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->bottomSeparator:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 498
    :cond_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetActionBarView:Lcom/twitter/sdk/android/tweetui/TweetActionBarView;

    invoke-virtual {p1, v1}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->setVisibility(I)V

    .line 499
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->bottomSeparator:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setTweetLinkClickListener(Lcom/twitter/sdk/android/tweetui/TweetLinkClickListener;)V
    .locals 1

    .line 482
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->setTweetLinkClickListener(Lcom/twitter/sdk/android/tweetui/TweetLinkClickListener;)V

    .line 483
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->quoteTweetView:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->setTweetLinkClickListener(Lcom/twitter/sdk/android/tweetui/TweetLinkClickListener;)V

    :cond_0
    return-void
.end method

.method public setTweetMediaClickListener(Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;)V
    .locals 1

    .line 470
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->setTweetMediaClickListener(Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;)V

    .line 471
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->quoteTweetView:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->setTweetMediaClickListener(Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;)V

    :cond_0
    return-void
.end method

.method showRetweetedBy(Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 343
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->retweetedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

    if-nez v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->retweetedByView:Landroid/widget/TextView;

    .line 347
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$string;->tw__retweeted_by_format:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->retweetedByView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 344
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->retweetedByView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
