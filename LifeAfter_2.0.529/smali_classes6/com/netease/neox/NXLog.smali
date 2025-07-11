.class public final Lcom/netease/neox/NXLog;
.super Ljava/lang/Object;
.source "NXLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native NativeLog(ILjava/lang/String;)V
.end method

.method private static native NativeLogError(Ljava/lang/String;)V
.end method

.method private static native NativeLogWarning(Ljava/lang/String;)V
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-static {p0}, Lcom/netease/neox/NXLog;->NativeLogError(Ljava/lang/String;)V

    return-void
.end method

.method public static i(ILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lcom/netease/neox/NXLog;->NativeLog(ILjava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/netease/neox/NXLog;->NativeLogWarning(Ljava/lang/String;)V

    return-void
.end method
