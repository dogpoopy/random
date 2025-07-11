.class public final Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse$WebTokenPersistMode;
.super Ljava/lang/Object;
.source "QrScanResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebTokenPersistMode"
.end annotation


# static fields
.field public static final NOT_SHOW:I = 0x0

.field public static final SHOW_AND_AGREE:I = 0x2

.field public static final SHOW_AND_DISAGREE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldAgree(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static shouldShow(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
