.class public Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$Key;
.super Ljava/lang/Object;
.source "ScannerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field public static CALLBACK_ID:Ljava/lang/String; = "callback_id"

.field public static CONFIRM_DATA:Ljava/lang/String; = "confirm_data"

.field public static OPTION_ID:Ljava/lang/String; = "option_id"

.field public static QR_DATA:Ljava/lang/String; = "qr_data"

.field public static SCENE:Ljava/lang/String; = "scene"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
