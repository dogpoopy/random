.class public final synthetic Landroidx/camera/view/-$$Lambda$-m8mYnc3JWbMLamuYD2LhuKPXZo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/view/-$$Lambda$-m8mYnc3JWbMLamuYD2LhuKPXZo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/view/-$$Lambda$-m8mYnc3JWbMLamuYD2LhuKPXZo;

    invoke-direct {v0}, Landroidx/camera/view/-$$Lambda$-m8mYnc3JWbMLamuYD2LhuKPXZo;-><init>()V

    sput-object v0, Landroidx/camera/view/-$$Lambda$-m8mYnc3JWbMLamuYD2LhuKPXZo;->INSTANCE:Landroidx/camera/view/-$$Lambda$-m8mYnc3JWbMLamuYD2LhuKPXZo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroidx/camera/view/ProcessCameraProviderWrapperImpl;

    check-cast p1, Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-direct {v0, p1}, Landroidx/camera/view/ProcessCameraProviderWrapperImpl;-><init>(Landroidx/camera/lifecycle/ProcessCameraProvider;)V

    check-cast v0, Landroidx/camera/view/ProcessCameraProviderWrapper;

    return-object v0
.end method
