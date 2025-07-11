.class public final synthetic Landroidx/camera/camera2/-$$Lambda$Camera2Config$kPfcZYYQs2fXKvw1cjC5GhRy6hM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/camera2/-$$Lambda$Camera2Config$kPfcZYYQs2fXKvw1cjC5GhRy6hM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/-$$Lambda$Camera2Config$kPfcZYYQs2fXKvw1cjC5GhRy6hM;

    invoke-direct {v0}, Landroidx/camera/camera2/-$$Lambda$Camera2Config$kPfcZYYQs2fXKvw1cjC5GhRy6hM;-><init>()V

    sput-object v0, Landroidx/camera/camera2/-$$Lambda$Camera2Config$kPfcZYYQs2fXKvw1cjC5GhRy6hM;->INSTANCE:Landroidx/camera/camera2/-$$Lambda$Camera2Config$kPfcZYYQs2fXKvw1cjC5GhRy6hM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)Landroidx/camera/core/impl/CameraDeviceSurfaceManager;
    .locals 0

    invoke-static {p1, p2, p3}, Landroidx/camera/camera2/Camera2Config;->lambda$defaultConfig$0(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    move-result-object p1

    return-object p1
.end method
