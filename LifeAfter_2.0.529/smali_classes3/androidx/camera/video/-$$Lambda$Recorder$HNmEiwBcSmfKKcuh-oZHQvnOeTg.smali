.class public final synthetic Landroidx/camera/video/-$$Lambda$Recorder$HNmEiwBcSmfKKcuh-oZHQvnOeTg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/video/-$$Lambda$Recorder$HNmEiwBcSmfKKcuh-oZHQvnOeTg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/video/-$$Lambda$Recorder$HNmEiwBcSmfKKcuh-oZHQvnOeTg;

    invoke-direct {v0}, Landroidx/camera/video/-$$Lambda$Recorder$HNmEiwBcSmfKKcuh-oZHQvnOeTg;-><init>()V

    sput-object v0, Landroidx/camera/video/-$$Lambda$Recorder$HNmEiwBcSmfKKcuh-oZHQvnOeTg;->INSTANCE:Landroidx/camera/video/-$$Lambda$Recorder$HNmEiwBcSmfKKcuh-oZHQvnOeTg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/camera/video/VideoSpec$Builder;

    invoke-static {p1}, Landroidx/camera/video/Recorder;->lambda$composeRecorderMediaSpec$9(Landroidx/camera/video/VideoSpec$Builder;)V

    return-void
.end method
