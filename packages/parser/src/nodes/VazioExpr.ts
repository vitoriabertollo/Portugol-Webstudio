import { ParserRuleContext } from "antlr4ng";

import { Expressão } from "./Expressão.js";
import { Node } from "./Node.js";

export class VazioExpr extends Expressão {
  constructor(
    public ctx: ParserRuleContext,
    public children: Node[],
  ) {
    super(ctx, children);
  }
}
