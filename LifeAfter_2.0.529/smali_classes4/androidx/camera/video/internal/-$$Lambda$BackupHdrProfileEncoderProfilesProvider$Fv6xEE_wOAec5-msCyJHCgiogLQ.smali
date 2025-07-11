.class public final synthetic Landroidx/camera/video/internal/-$$Lambda$BackupHdrProfileEncoderProfilesProvider$Fv6xEE_wOAec5-msCyJHCgiogLQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/video/internal/-$$Lambda$BackupHdrProfileEncoderProfilesProvider$Fv6xEE_wOAec5-msCyJHCgiogLQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/video/internal/-$$Lambda$BackupHdrProfileEncoderProfilesProvider$Fv6xEE_wOAec5-msCyJHCgiogLQ;

    invoke-direct {v0}, Landroidx/camera/video/internal/-$$Lambda$BackupHdrProfileEncoderProfilesProvider$Fv6xEE_wOAec5-msCyJHCgiogLQ;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/-$$Lambda$BackupHdrProfileEncoderProfilesProvider$Fv6xEE_wOAec5-msCyJHCgiogLQ;->INSTANCE:Landroidx/camera/video/internal/-$$Lambda$BackupHdrProfileEncoderProfilesProvider$Fv6xEE_wOAec5-msCyJHCgiogLQ;

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

    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    invoke-static {p1}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->lambda$Fv6xEE_wOAec5-msCyJHCgiogLQ(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object p1

    return-object p1
.end method
