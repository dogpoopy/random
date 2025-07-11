.class public Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;
.super Landroid/widget/FrameLayout;
.source "MediaBadgeView.java"


# instance fields
.field badge:Landroid/widget/ImageView;

.field videoDuration:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->initSubViews(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method initSubViews(Landroid/content/Context;)V
    .locals 2

    const-string v0, "layout_inflater"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 55
    sget v0, Lcom/twitter/sdk/android/tweetui/R$layout;->tw__media_badge:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__video_duration:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->videoDuration:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__gif_badge:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->badge:Landroid/widget/ImageView;

    return-void
.end method

.method setBadge(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->badge:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->videoDuration:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->badge:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCard(Lcom/twitter/sdk/android/core/models/Card;)V
    .locals 1

    .line 73
    invoke-static {p1}, Lcom/twitter/sdk/android/core/internal/VineCardUtils;->isVine(Lcom/twitter/sdk/android/core/models/Card;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__vine_badge:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->setBadge(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->setEmpty()V

    :goto_0
    return-void
.end method

.method setEmpty()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->videoDuration:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->badge:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setMediaEntity(Lcom/twitter/sdk/android/core/models/MediaEntity;)V
    .locals 2

    .line 62
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    const-string v1, "animated_gif"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__gif_badge:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->setBadge(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 64
    :cond_0
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/MediaEntity;->videoInfo:Lcom/twitter/sdk/android/core/models/VideoInfo;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/MediaEntity;->videoInfo:Lcom/twitter/sdk/android/core/models/VideoInfo;

    iget-wide v0, p1, Lcom/twitter/sdk/android/core/models/VideoInfo;->durationMillis:J

    .line 66
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->setText(J)V

    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->setEmpty()V

    :goto_1
    return-void
.end method

.method setText(J)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->videoDuration:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->badge:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->videoDuration:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/twitter/sdk/android/tweetui/internal/MediaTimeUtils;->getPlaybackTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
