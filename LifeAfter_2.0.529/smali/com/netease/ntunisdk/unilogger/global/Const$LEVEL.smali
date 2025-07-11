.class public Lcom/netease/ntunisdk/unilogger/global/Const$LEVEL;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/unilogger/global/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LEVEL"
.end annotation


# static fields
.field public static final DEBUG:Ljava/lang/String; = "D"

.field public static final ERROR:Ljava/lang/String; = "E"

.field public static final INFO:Ljava/lang/String; = "I"

.field public static final VERBOSE:Ljava/lang/String; = "V"

.field public static final WARN:Ljava/lang/String; = "W"


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/unilogger/global/Const;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/unilogger/global/Const;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/global/Const$LEVEL;->this$0:Lcom/netease/ntunisdk/unilogger/global/Const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
