.class public final synthetic Landroidx/camera/video/-$$Lambda$Recorder$RecordingRecord$yLaQAg1cesXRQbJVV4Jqlj8HHC0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/video/-$$Lambda$Recorder$RecordingRecord$yLaQAg1cesXRQbJVV4Jqlj8HHC0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/video/-$$Lambda$Recorder$RecordingRecord$yLaQAg1cesXRQbJVV4Jqlj8HHC0;

    invoke-direct {v0}, Landroidx/camera/video/-$$Lambda$Recorder$RecordingRecord$yLaQAg1cesXRQbJVV4Jqlj8HHC0;-><init>()V

    sput-object v0, Landroidx/camera/video/-$$Lambda$Recorder$RecordingRecord$yLaQAg1cesXRQbJVV4Jqlj8HHC0;->INSTANCE:Landroidx/camera/video/-$$Lambda$Recorder$RecordingRecord$yLaQAg1cesXRQbJVV4Jqlj8HHC0;

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

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method
