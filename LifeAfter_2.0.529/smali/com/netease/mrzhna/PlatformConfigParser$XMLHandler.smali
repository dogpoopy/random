.class Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PlatformConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mrzhna/PlatformConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XMLHandler"
.end annotation


# static fields
.field public static final AND:I = 0x1

.field public static final OR:I = 0x2

.field public static final UNKNOWN:I


# instance fields
.field private m_condition:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_condition_group:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_config:Ljava/lang/String;

.field private m_option:Z

.field private m_options:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_variables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mrzhna/PlatformConfigParser$Variable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netease/mrzhna/PlatformConfigParser;


# direct methods
.method public constructor <init>(Lcom/netease/mrzhna/PlatformConfigParser;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mrzhna/PlatformConfigParser$Variable;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->this$0:Lcom/netease/mrzhna/PlatformConfigParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 216
    iput-object p2, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_variables:Ljava/util/HashMap;

    .line 217
    iput-object p3, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_options:Ljava/util/HashMap;

    .line 218
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    .line 219
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    const/4 p1, 0x0

    .line 220
    iput-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    const/4 p1, 0x0

    .line 221
    iput-boolean p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_option:Z

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "Config"

    .line 285
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_options:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    iget-boolean p3, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_option:Z

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 288
    iput-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "ConditionGroup"

    .line 290
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 292
    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 293
    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 294
    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 296
    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    .line 299
    iget-boolean p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_option:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    iput-boolean p2, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_option:Z

    goto :goto_0

    .line 303
    :cond_2
    iget-boolean p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_option:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p2, 0x1

    :cond_4
    iput-boolean p2, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_option:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "Config"

    .line 228
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 231
    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    const-string p1, "name"

    .line 232
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    const-string p1, "ConditionGroup"

    .line 234
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const-string p1, "type"

    .line 236
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "and"

    .line 238
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 241
    iput-boolean v0, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_option:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 246
    iput-boolean p2, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_option:Z

    .line 248
    :goto_0
    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    iget-boolean p2, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_option:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string p1, "Condition"

    .line 251
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 253
    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p3, "object"

    const-string v1, "predicate"

    const-string v2, "subject"

    if-ne p1, v0, :cond_4

    .line 256
    iget-boolean p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_option:Z

    if-eqz p1, :cond_7

    .line 258
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 262
    iget-object p4, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_variables:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mrzhna/PlatformConfigParser$Variable;

    .line 263
    iget-boolean p4, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_option:Z

    if-eqz p4, :cond_3

    invoke-virtual {p1, v1, p3}, Lcom/netease/mrzhna/PlatformConfigParser$Variable;->evaluate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    iput-boolean p2, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_option:Z

    goto :goto_1

    .line 268
    :cond_4
    iget-boolean p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_option:Z

    if-nez p1, :cond_7

    .line 270
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 274
    iget-object p4, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_variables:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mrzhna/PlatformConfigParser$Variable;

    .line 275
    iget-boolean p4, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_option:Z

    if-nez p4, :cond_5

    invoke-virtual {p1, v1, p3}, Lcom/netease/mrzhna/PlatformConfigParser$Variable;->evaluate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 p2, 0x1

    :cond_6
    iput-boolean p2, p0, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;->m_option:Z

    :cond_7
    :goto_1
    return-void
.end method
