.class public final synthetic Landroidx/camera/core/impl/-$$Lambda$UseCaseAttachState$oYLHJKuC0cxs1U3qhtLyR08giP4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/UseCaseAttachState$AttachStateFilter;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/core/impl/-$$Lambda$UseCaseAttachState$oYLHJKuC0cxs1U3qhtLyR08giP4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/impl/-$$Lambda$UseCaseAttachState$oYLHJKuC0cxs1U3qhtLyR08giP4;

    invoke-direct {v0}, Landroidx/camera/core/impl/-$$Lambda$UseCaseAttachState$oYLHJKuC0cxs1U3qhtLyR08giP4;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/-$$Lambda$UseCaseAttachState$oYLHJKuC0cxs1U3qhtLyR08giP4;->INSTANCE:Landroidx/camera/core/impl/-$$Lambda$UseCaseAttachState$oYLHJKuC0cxs1U3qhtLyR08giP4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;)Z
    .locals 0

    invoke-static {p1}, Landroidx/camera/core/impl/UseCaseAttachState;->lambda$getAttachedUseCaseConfigs$0(Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;)Z

    move-result p1

    return p1
.end method
