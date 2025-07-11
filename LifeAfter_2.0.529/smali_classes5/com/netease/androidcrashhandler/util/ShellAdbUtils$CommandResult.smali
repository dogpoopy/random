.class public Lcom/netease/androidcrashhandler/util/ShellAdbUtils$CommandResult;
.super Ljava/lang/Object;
.source "ShellAdbUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/util/ShellAdbUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandResult"
.end annotation


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public result:I

.field public successMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput p1, p0, Lcom/netease/androidcrashhandler/util/ShellAdbUtils$CommandResult;->result:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput p1, p0, Lcom/netease/androidcrashhandler/util/ShellAdbUtils$CommandResult;->result:I

    .line 218
    iput-object p2, p0, Lcom/netease/androidcrashhandler/util/ShellAdbUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 219
    iput-object p3, p0, Lcom/netease/androidcrashhandler/util/ShellAdbUtils$CommandResult;->errorMsg:Ljava/lang/String;

    return-void
.end method
