.class public Lcom/netease/mpay/oversea/scan/tools/Logging;
.super Ljava/lang/Object;
.source "Logging.java"


# static fields
.field private static final DEBUG_TAG:Ljava/lang/String; = "MpayDebug"

.field public static final LF:Ljava/lang/String; = "\n"

.field private static final LOG_TAG:Ljava/lang/String; = "MPayDebug"

.field public static final MUL_LF:Ljava/lang/String; = "\n\n\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static final log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static final log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\n\n=========== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ===========\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/tools/Logging;->log(Ljava/lang/String;)V

    .line 32
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object v1, p1, v0

    .line 33
    invoke-static {v1}, Lcom/netease/mpay/oversea/scan/tools/Logging;->log(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static logStackTrace(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
