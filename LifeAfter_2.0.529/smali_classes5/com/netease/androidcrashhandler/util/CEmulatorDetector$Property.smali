.class Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;
.super Ljava/lang/Object;
.source "CEmulatorDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/util/CEmulatorDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Property"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public seek_value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;->name:Ljava/lang/String;

    .line 218
    iput-object p2, p0, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;->seek_value:Ljava/lang/String;

    return-void
.end method
