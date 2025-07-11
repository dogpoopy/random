.class public final synthetic Landroidx/camera/core/impl/-$$Lambda$OptionsBundle$bIuPzRq4QSr3Lk1Ng-Vq22x234k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/core/impl/-$$Lambda$OptionsBundle$bIuPzRq4QSr3Lk1Ng-Vq22x234k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/impl/-$$Lambda$OptionsBundle$bIuPzRq4QSr3Lk1Ng-Vq22x234k;

    invoke-direct {v0}, Landroidx/camera/core/impl/-$$Lambda$OptionsBundle$bIuPzRq4QSr3Lk1Ng-Vq22x234k;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/-$$Lambda$OptionsBundle$bIuPzRq4QSr3Lk1Ng-Vq22x234k;->INSTANCE:Landroidx/camera/core/impl/-$$Lambda$OptionsBundle$bIuPzRq4QSr3Lk1Ng-Vq22x234k;

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

    check-cast p1, Landroidx/camera/core/impl/Config$Option;

    check-cast p2, Landroidx/camera/core/impl/Config$Option;

    invoke-static {p1, p2}, Landroidx/camera/core/impl/OptionsBundle;->lambda$static$0(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$Option;)I

    move-result p1

    return p1
.end method
