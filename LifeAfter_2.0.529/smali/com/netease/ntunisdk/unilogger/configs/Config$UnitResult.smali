.class public Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/unilogger/configs/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnitResult"
.end annotation


# instance fields
.field public andMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public isCallback:Z

.field public isRemote:Z

.field public orMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netease/ntunisdk/unilogger/configs/Config;

.field public uploadEnable:Z

.field public writeEnable:Z


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/unilogger/configs/Config;)V
    .locals 1

    .line 33
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->this$0:Lcom/netease/ntunisdk/unilogger/configs/Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->isCallback:Z

    .line 35
    iput-boolean p1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->isRemote:Z

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->writeEnable:Z

    .line 37
    iput-boolean p1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->uploadEnable:Z

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->orMap:Ljava/util/HashMap;

    .line 39
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->andMap:Ljava/util/HashMap;

    return-void
.end method
