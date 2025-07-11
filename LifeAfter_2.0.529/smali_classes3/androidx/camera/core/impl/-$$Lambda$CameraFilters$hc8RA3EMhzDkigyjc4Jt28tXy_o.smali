.class public final synthetic Landroidx/camera/core/impl/-$$Lambda$CameraFilters$hc8RA3EMhzDkigyjc4Jt28tXy_o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/CameraFilter;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/core/impl/-$$Lambda$CameraFilters$hc8RA3EMhzDkigyjc4Jt28tXy_o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/impl/-$$Lambda$CameraFilters$hc8RA3EMhzDkigyjc4Jt28tXy_o;

    invoke-direct {v0}, Landroidx/camera/core/impl/-$$Lambda$CameraFilters$hc8RA3EMhzDkigyjc4Jt28tXy_o;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/-$$Lambda$CameraFilters$hc8RA3EMhzDkigyjc4Jt28tXy_o;->INSTANCE:Landroidx/camera/core/impl/-$$Lambda$CameraFilters$hc8RA3EMhzDkigyjc4Jt28tXy_o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Landroidx/camera/core/impl/CameraFilters;->lambda$static$1(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getIdentifier()Landroidx/camera/core/impl/Identifier;
    .locals 1

    invoke-static {p0}, Landroidx/camera/core/CameraFilter$-CC;->$default$getIdentifier(Landroidx/camera/core/CameraFilter;)Landroidx/camera/core/impl/Identifier;

    move-result-object v0

    return-object v0
.end method
