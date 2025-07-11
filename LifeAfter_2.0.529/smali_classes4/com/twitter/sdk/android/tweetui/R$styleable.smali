.class public final Lcom/twitter/sdk/android/tweetui/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AspectRatioFrameLayout:[I

.field public static final AspectRatioFrameLayout_tw__frame_layout_aspect_ratio:I = 0x0

.field public static final AspectRatioFrameLayout_tw__frame_layout_dimension_to_adjust:I = 0x1

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_layoutManager:I = 0x1

.field public static final RecyclerView_reverseLayout:I = 0x2

.field public static final RecyclerView_spanCount:I = 0x3

.field public static final RecyclerView_stackFromEnd:I = 0x4

.field public static final ToggleImageButton:[I

.field public static final ToggleImageButton_contentDescriptionOff:I = 0x0

.field public static final ToggleImageButton_contentDescriptionOn:I = 0x1

.field public static final ToggleImageButton_state_toggled_on:I = 0x2

.field public static final ToggleImageButton_toggleOnClick:I = 0x3

.field public static final tw__TweetView:[I

.field public static final tw__TweetView_tw__action_color:I = 0x0

.field public static final tw__TweetView_tw__action_highlight_color:I = 0x1

.field public static final tw__TweetView_tw__container_bg_color:I = 0x2

.field public static final tw__TweetView_tw__primary_text_color:I = 0x3

.field public static final tw__TweetView_tw__tweet_actions_enabled:I = 0x4

.field public static final tw__TweetView_tw__tweet_id:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 379
    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->AspectRatioFrameLayout:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 382
    fill-array-data v0, :array_1

    sput-object v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->RecyclerView:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 388
    fill-array-data v0, :array_2

    sput-object v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->ToggleImageButton:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 393
    fill-array-data v0, :array_3

    sput-object v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->tw__TweetView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020397
        0x7f020398
    .end array-data

    :array_1
    .array-data 4
        0x10100c4
        0x7f0201c8
        0x7f02029c
        0x7f0202c2
        0x7f0202c8
    .end array-data

    :array_2
    .array-data 4
        0x7f020390
        0x7f020391
        0x7f020392
        0x7f020393
    .end array-data

    :array_3
    .array-data 4
        0x7f020394
        0x7f020395
        0x7f020396
        0x7f020399
        0x7f02039a
        0x7f02039b
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
