.class public final synthetic Landroidx/camera/core/impl/-$$Lambda$CameraConfigProvider$BjzF-3tA5-JX1HbLj3Jy5z39jNo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/CameraConfigProvider;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/core/impl/-$$Lambda$CameraConfigProvider$BjzF-3tA5-JX1HbLj3Jy5z39jNo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/impl/-$$Lambda$CameraConfigProvider$BjzF-3tA5-JX1HbLj3Jy5z39jNo;

    invoke-direct {v0}, Landroidx/camera/core/impl/-$$Lambda$CameraConfigProvider$BjzF-3tA5-JX1HbLj3Jy5z39jNo;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/-$$Lambda$CameraConfigProvider$BjzF-3tA5-JX1HbLj3Jy5z39jNo;->INSTANCE:Landroidx/camera/core/impl/-$$Lambda$CameraConfigProvider$BjzF-3tA5-JX1HbLj3Jy5z39jNo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConfig(Landroidx/camera/core/CameraInfo;Landroid/content/Context;)Landroidx/camera/core/impl/CameraConfig;
    .locals 0

    invoke-static {p1, p2}, Landroidx/camera/core/impl/CameraConfigProvider$-CC;->lambda$static$0(Landroidx/camera/core/CameraInfo;Landroid/content/Context;)Landroidx/camera/core/impl/CameraConfig;

    move-result-object p1

    return-object p1
.end method
