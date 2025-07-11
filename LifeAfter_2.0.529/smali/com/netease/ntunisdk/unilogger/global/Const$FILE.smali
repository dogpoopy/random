.class public Lcom/netease/ntunisdk/unilogger/global/Const$FILE;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/unilogger/global/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FILE"
.end annotation


# static fields
.field public static final CARRIER_LIMIT:J = 0xa00000L

.field public static final EXPIRE:I = 0x1e

.field public static final FILE_LIMIT:J = 0xa00000L

.field public static final LOCAL_CONFIG_FILE_NAME:Ljava/lang/String; = "unilogger_local_config_file"

.field public static final QUEUE_SIZE:I = 0x14

.field public static final UNIT_RESULT_FILE_NAME:Ljava/lang/String; = "unilogger_unit_result"

.field public static final ZIP_FILE_SUFFIX:Ljava/lang/String; = ".zip"


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/unilogger/global/Const;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/unilogger/global/Const;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/global/Const$FILE;->this$0:Lcom/netease/ntunisdk/unilogger/global/Const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
