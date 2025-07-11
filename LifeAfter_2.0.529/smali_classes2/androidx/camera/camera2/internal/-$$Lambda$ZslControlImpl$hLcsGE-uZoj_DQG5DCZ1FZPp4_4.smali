.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$ZslControlImpl$hLcsGE-uZoj_DQG5DCZ1FZPp4_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/internal/utils/RingBuffer$OnRemoveCallback;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/camera2/internal/-$$Lambda$ZslControlImpl$hLcsGE-uZoj_DQG5DCZ1FZPp4_4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/internal/-$$Lambda$ZslControlImpl$hLcsGE-uZoj_DQG5DCZ1FZPp4_4;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/-$$Lambda$ZslControlImpl$hLcsGE-uZoj_DQG5DCZ1FZPp4_4;-><init>()V

    sput-object v0, Landroidx/camera/camera2/internal/-$$Lambda$ZslControlImpl$hLcsGE-uZoj_DQG5DCZ1FZPp4_4;->INSTANCE:Landroidx/camera/camera2/internal/-$$Lambda$ZslControlImpl$hLcsGE-uZoj_DQG5DCZ1FZPp4_4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemove(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/camera/core/ImageProxy;

    invoke-static {p1}, Landroidx/camera/camera2/internal/ZslControlImpl;->lambda$new$0(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method
