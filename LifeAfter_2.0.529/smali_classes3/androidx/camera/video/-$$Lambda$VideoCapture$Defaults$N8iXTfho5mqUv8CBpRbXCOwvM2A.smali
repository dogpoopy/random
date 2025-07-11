.class public final synthetic Landroidx/camera/video/-$$Lambda$VideoCapture$Defaults$N8iXTfho5mqUv8CBpRbXCOwvM2A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/video/-$$Lambda$VideoCapture$Defaults$N8iXTfho5mqUv8CBpRbXCOwvM2A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/video/-$$Lambda$VideoCapture$Defaults$N8iXTfho5mqUv8CBpRbXCOwvM2A;

    invoke-direct {v0}, Landroidx/camera/video/-$$Lambda$VideoCapture$Defaults$N8iXTfho5mqUv8CBpRbXCOwvM2A;-><init>()V

    sput-object v0, Landroidx/camera/video/-$$Lambda$VideoCapture$Defaults$N8iXTfho5mqUv8CBpRbXCOwvM2A;->INSTANCE:Landroidx/camera/video/-$$Lambda$VideoCapture$Defaults$N8iXTfho5mqUv8CBpRbXCOwvM2A;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    invoke-static {p1}, Landroidx/camera/video/VideoCapture$Defaults;->lambda$createFinder$0(Landroidx/camera/video/internal/encoder/VideoEncoderConfig;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object p1

    return-object p1
.end method
