.class public Lcom/netease/ntunisdk/core/ntstr/NtSdkString;
.super Ljava/lang/Object;


# instance fields
.field public action:Ljava/lang/String;

.field public attributes:Ljava/lang/String;

.field public bold:Z

.field public color:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public href:Ljava/lang/String;

.field public isPureText:Z

.field public openType:Ljava/lang/String;

.field public underline:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->content:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->isPureText:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->content:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->attributes:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->isPureText:Z

    return-void
.end method
