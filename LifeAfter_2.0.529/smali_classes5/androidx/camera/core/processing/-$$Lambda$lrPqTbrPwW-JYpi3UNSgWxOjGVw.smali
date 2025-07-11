.class public final synthetic Landroidx/camera/core/processing/-$$Lambda$lrPqTbrPwW-JYpi3UNSgWxOjGVw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/core/processing/-$$Lambda$lrPqTbrPwW-JYpi3UNSgWxOjGVw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/processing/-$$Lambda$lrPqTbrPwW-JYpi3UNSgWxOjGVw;

    invoke-direct {v0}, Landroidx/camera/core/processing/-$$Lambda$lrPqTbrPwW-JYpi3UNSgWxOjGVw;-><init>()V

    sput-object v0, Landroidx/camera/core/processing/-$$Lambda$lrPqTbrPwW-JYpi3UNSgWxOjGVw;->INSTANCE:Landroidx/camera/core/processing/-$$Lambda$lrPqTbrPwW-JYpi3UNSgWxOjGVw;

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

    new-instance v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    check-cast p1, Landroidx/camera/core/DynamicRange;

    invoke-direct {v0, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;-><init>(Landroidx/camera/core/DynamicRange;)V

    check-cast v0, Landroidx/camera/core/processing/SurfaceProcessorInternal;

    return-object v0
.end method
