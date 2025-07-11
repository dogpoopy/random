.class Lcom/netease/ntunisdk/base/utils/Property;
.super Ljava/lang/Object;
.source "EmulatorDetector.java"


# instance fields
.field public name:Ljava/lang/String;

.field public seek_value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/Property;->name:Ljava/lang/String;

    .line 283
    iput-object p2, p0, Lcom/netease/ntunisdk/base/utils/Property;->seek_value:Ljava/lang/String;

    return-void
.end method
