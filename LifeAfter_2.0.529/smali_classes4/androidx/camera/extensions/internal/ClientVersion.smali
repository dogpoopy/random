.class public Landroidx/camera/extensions/internal/ClientVersion;
.super Ljava/lang/Object;
.source "ClientVersion.java"


# static fields
.field private static sCurrent:Landroidx/camera/extensions/internal/ClientVersion;


# instance fields
.field private final mVersion:Landroidx/camera/extensions/internal/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Landroidx/camera/extensions/internal/ClientVersion;

    const-string v1, "1.3.0"

    invoke-direct {v0, v1}, Landroidx/camera/extensions/internal/ClientVersion;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/camera/extensions/internal/ClientVersion;->sCurrent:Landroidx/camera/extensions/internal/ClientVersion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Landroidx/camera/extensions/internal/Version;->parse(Ljava/lang/String;)Landroidx/camera/extensions/internal/Version;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/extensions/internal/ClientVersion;->mVersion:Landroidx/camera/extensions/internal/Version;

    return-void
.end method

.method public static getCurrentVersion()Landroidx/camera/extensions/internal/ClientVersion;
    .locals 1

    .line 34
    sget-object v0, Landroidx/camera/extensions/internal/ClientVersion;->sCurrent:Landroidx/camera/extensions/internal/ClientVersion;

    return-object v0
.end method

.method public static isMinimumCompatibleVersion(Landroidx/camera/extensions/internal/Version;)Z
    .locals 2

    .line 68
    invoke-static {}, Landroidx/camera/extensions/internal/ClientVersion;->getCurrentVersion()Landroidx/camera/extensions/internal/ClientVersion;

    move-result-object v0

    iget-object v0, v0, Landroidx/camera/extensions/internal/ClientVersion;->mVersion:Landroidx/camera/extensions/internal/Version;

    .line 69
    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getMajor()I

    move-result v1

    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getMinor()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroidx/camera/extensions/internal/Version;->compareTo(II)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setCurrentVersion(Landroidx/camera/extensions/internal/ClientVersion;)V
    .locals 0

    .line 42
    sput-object p0, Landroidx/camera/extensions/internal/ClientVersion;->sCurrent:Landroidx/camera/extensions/internal/ClientVersion;

    return-void
.end method


# virtual methods
.method public getVersion()Landroidx/camera/extensions/internal/Version;
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/camera/extensions/internal/ClientVersion;->mVersion:Landroidx/camera/extensions/internal/Version;

    return-object v0
.end method

.method public toVersionString()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Landroidx/camera/extensions/internal/ClientVersion;->mVersion:Landroidx/camera/extensions/internal/Version;

    invoke-virtual {v0}, Landroidx/camera/extensions/internal/Version;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
