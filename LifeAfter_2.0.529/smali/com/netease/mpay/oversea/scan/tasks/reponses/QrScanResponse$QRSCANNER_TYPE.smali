.class public Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse$QRSCANNER_TYPE;
.super Ljava/lang/Object;
.source "QrScanResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QRSCANNER_TYPE"
.end annotation


# static fields
.field public static final GAME_AUTH:I = 0x3

.field public static final LOGIN:I = 0x1

.field public static final PAY:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
