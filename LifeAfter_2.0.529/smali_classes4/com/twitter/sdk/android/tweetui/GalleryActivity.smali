.class public Lcom/twitter/sdk/android/tweetui/GalleryActivity;
.super Landroid/app/Activity;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;
    }
.end annotation


# static fields
.field public static final GALLERY_ITEM:Ljava/lang/String; = "GALLERY_ITEM"

.field static final MEDIA_ENTITY:Ljava/lang/String; = "MEDIA_ENTITY"


# instance fields
.field galleryItem:Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

.field final galleryScribeClient:Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    new-instance v0, Lcom/twitter/sdk/android/tweetui/GalleryScribeClientImpl;

    .line 38
    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/tweetui/GalleryScribeClientImpl;-><init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryScribeClient:Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;

    return-void
.end method


# virtual methods
.method getGalleryItem()Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;
    .locals 3

    .line 109
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MEDIA_ENTITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/MediaEntity;

    if-eqz v0, :cond_0

    .line 111
    new-instance v1, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;-><init>(ILjava/util/List;)V

    return-object v1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GALLERY_ITEM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    return-object v0
.end method

.method getOnPageChangeListener()Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    .line 65
    new-instance v0, Lcom/twitter/sdk/android/tweetui/GalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity$1;-><init>(Lcom/twitter/sdk/android/tweetui/GalleryActivity;)V

    return-object v0
.end method

.method getSwipeToDismissCallback()Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;
    .locals 1

    .line 94
    new-instance v0, Lcom/twitter/sdk/android/tweetui/GalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity$2;-><init>(Lcom/twitter/sdk/android/tweetui/GalleryActivity;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->scribeDismissEvent()V

    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 121
    sget v0, Lcom/twitter/sdk/android/tweetui/R$anim;->tw__slide_out:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lcom/twitter/sdk/android/tweetui/R$layout;->tw__gallery_activity:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->getGalleryItem()Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryItem:Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    if-nez p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->scribeShowEvent()V

    .line 52
    :cond_0
    new-instance p1, Lcom/twitter/sdk/android/tweetui/GalleryAdapter;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->getSwipeToDismissCallback()Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/twitter/sdk/android/tweetui/GalleryAdapter;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;)V

    .line 53
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryItem:Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;->mediaEntities:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetui/GalleryAdapter;->addAll(Ljava/util/List;)V

    .line 55
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__view_pager:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 57
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$dimen;->tw__gallery_page_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 59
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->getOnPageChangeListener()Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 60
    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 61
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryItem:Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    iget p1, p1, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;->mediaEntityIndex:I

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method scribeDismissEvent()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryScribeClient:Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;->dismiss()V

    return-void
.end method

.method scribeImpressionEvent(I)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryItem:Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;->mediaEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/models/MediaEntity;

    .line 134
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryItem:Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    iget-wide v0, v0, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;->tweetId:J

    invoke-static {v0, v1, p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->fromMediaEntity(JLcom/twitter/sdk/android/core/models/MediaEntity;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryScribeClient:Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;

    invoke-interface {v0, p1}, Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;->impression(Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;)V

    return-void
.end method

.method scribeNavigateEvent()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryScribeClient:Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;->navigate()V

    return-void
.end method

.method scribeShowEvent()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryScribeClient:Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;->show()V

    return-void
.end method
