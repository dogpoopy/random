.class public final synthetic Landroidx/camera/core/impl/-$$Lambda$UseCaseAttachState$UUABlSlnlJ3LMZ3mnyTO3ihZ3HI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/UseCaseAttachState$AttachStateFilter;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/core/impl/-$$Lambda$UseCaseAttachState$UUABlSlnlJ3LMZ3mnyTO3ihZ3HI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/impl/-$$Lambda$UseCaseAttachState$UUABlSlnlJ3LMZ3mnyTO3ihZ3HI;

    invoke-direct {v0}, Landroidx/camera/core/impl/-$$Lambda$UseCaseAttachState$UUABlSlnlJ3LMZ3mnyTO3ihZ3HI;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/-$$Lambda$UseCaseAttachState$UUABlSlnlJ3LMZ3mnyTO3ihZ3HI;->INSTANCE:Landroidx/camera/core/impl/-$$Lambda$UseCaseAttachState$UUABlSlnlJ3LMZ3mnyTO3ihZ3HI;

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

    invoke-static {p1}, Landroidx/camera/core/impl/UseCaseAttachState;->lambda$getAttachedSessionConfigs$1(Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;)Z

    move-result p1

    return p1
.end method
