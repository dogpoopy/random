.class public final synthetic Landroidx/camera/camera2/-$$Lambda$Camera2Config$g_hY10kZhqC56um0PalOLTzuFlU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/camera2/-$$Lambda$Camera2Config$g_hY10kZhqC56um0PalOLTzuFlU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/-$$Lambda$Camera2Config$g_hY10kZhqC56um0PalOLTzuFlU;

    invoke-direct {v0}, Landroidx/camera/camera2/-$$Lambda$Camera2Config$g_hY10kZhqC56um0PalOLTzuFlU;-><init>()V

    sput-object v0, Landroidx/camera/camera2/-$$Lambda$Camera2Config$g_hY10kZhqC56um0PalOLTzuFlU;->INSTANCE:Landroidx/camera/camera2/-$$Lambda$Camera2Config$g_hY10kZhqC56um0PalOLTzuFlU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Landroid/content/Context;)Landroidx/camera/core/impl/UseCaseConfigFactory;
    .locals 0

    invoke-static {p1}, Landroidx/camera/camera2/Camera2Config;->lambda$defaultConfig$1(Landroid/content/Context;)Landroidx/camera/core/impl/UseCaseConfigFactory;

    move-result-object p1

    return-object p1
.end method
