.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$MeteringRepeatingSession$9oPcLHr32ysZoF1df0hiKYJ0CLs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/camera2/internal/-$$Lambda$MeteringRepeatingSession$9oPcLHr32ysZoF1df0hiKYJ0CLs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/internal/-$$Lambda$MeteringRepeatingSession$9oPcLHr32ysZoF1df0hiKYJ0CLs;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/-$$Lambda$MeteringRepeatingSession$9oPcLHr32ysZoF1df0hiKYJ0CLs;-><init>()V

    sput-object v0, Landroidx/camera/camera2/internal/-$$Lambda$MeteringRepeatingSession$9oPcLHr32ysZoF1df0hiKYJ0CLs;->INSTANCE:Landroidx/camera/camera2/internal/-$$Lambda$MeteringRepeatingSession$9oPcLHr32ysZoF1df0hiKYJ0CLs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-static {p1, p2}, Landroidx/camera/camera2/internal/MeteringRepeatingSession;->lambda$getProperPreviewSize$1(Landroid/util/Size;Landroid/util/Size;)I

    move-result p1

    return p1
.end method
