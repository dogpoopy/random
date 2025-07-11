.class public Lcom/netease/ntunisdk/unilogger/utils/ThrowableString;
.super Ljava/lang/Object;
.source "ThrowableString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/unilogger/utils/ThrowableString$TSTOutputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Lcom/netease/ntunisdk/unilogger/utils/ThrowableString$TSTOutputStream;

    invoke-direct {v2, v0}, Lcom/netease/ntunisdk/unilogger/utils/ThrowableString$TSTOutputStream;-><init>(Ljava/lang/StringBuilder;)V

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
