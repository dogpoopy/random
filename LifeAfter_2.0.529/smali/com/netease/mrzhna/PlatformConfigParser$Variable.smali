.class public Lcom/netease/mrzhna/PlatformConfigParser$Variable;
.super Ljava/lang/Object;
.source "PlatformConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mrzhna/PlatformConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Variable"
.end annotation


# instance fields
.field protected m_name:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/mrzhna/PlatformConfigParser;


# direct methods
.method public constructor <init>(Lcom/netease/mrzhna/PlatformConfigParser;Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$Variable;->this$0:Lcom/netease/mrzhna/PlatformConfigParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/netease/mrzhna/PlatformConfigParser$Variable;->m_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/netease/mrzhna/PlatformConfigParser$Variable;->m_name:Ljava/lang/String;

    return-object v0
.end method
