.class public Lcom/netease/cc/videoedit/transcoder/internal/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/videoedit/transcoder/internal/Logger$LogLevel;
    }
.end annotation


# static fields
.field public static final LEVEL_ERROR:I = 0x3

.field public static final LEVEL_INFO:I = 0x1

.field public static final LEVEL_VERBOSE:I = 0x0

.field public static final LEVEL_WARNING:I = 0x2

.field private static sLevel:I


# instance fields
.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->mTag:Ljava/lang/String;

    return-void
.end method

.method private log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 87
    invoke-direct {p0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->should(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->mTag:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 91
    :cond_2
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->mTag:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 90
    :cond_3
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->mTag:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 89
    :cond_4
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->mTag:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .line 54
    sput p0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->sLevel:I

    return-void
.end method

.method private should(I)Z
    .locals 1

    .line 58
    sget v0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->sLevel:I

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x3

    .line 83
    invoke-direct {p0, v0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1, v0}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 75
    invoke-direct {p0, v0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    .line 79
    invoke-direct {p0, v0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
