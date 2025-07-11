.class public final synthetic Landroidx/camera/video/internal/audio/-$$Lambda$XghC0zvsbyHw5bE9-HfRJKBCzHo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/video/internal/audio/AudioStreamFactory;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/video/internal/audio/-$$Lambda$XghC0zvsbyHw5bE9-HfRJKBCzHo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/video/internal/audio/-$$Lambda$XghC0zvsbyHw5bE9-HfRJKBCzHo;

    invoke-direct {v0}, Landroidx/camera/video/internal/audio/-$$Lambda$XghC0zvsbyHw5bE9-HfRJKBCzHo;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/audio/-$$Lambda$XghC0zvsbyHw5bE9-HfRJKBCzHo;->INSTANCE:Landroidx/camera/video/internal/audio/-$$Lambda$XghC0zvsbyHw5bE9-HfRJKBCzHo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/camera/video/internal/audio/AudioSettings;Landroid/content/Context;)Landroidx/camera/video/internal/audio/AudioStream;
    .locals 1

    new-instance v0, Landroidx/camera/video/internal/audio/AudioStreamImpl;

    invoke-direct {v0, p1, p2}, Landroidx/camera/video/internal/audio/AudioStreamImpl;-><init>(Landroidx/camera/video/internal/audio/AudioSettings;Landroid/content/Context;)V

    check-cast v0, Landroidx/camera/video/internal/audio/AudioStream;

    return-object v0
.end method
